import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/app/current_user_provider.dart';
import 'package:kyons_flutter/src/authentication/app/sign_in_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';
import 'package:url_launcher/link.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.primaryBlue,
        body: SafeArea(
          child: Center(
            child: Container(
              width: context.isXsScreen() ? double.infinity : 400,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onDoubleTap: () => ref.read(signInProvider.notifier).initial(),
                        child: SizedBox(height: 100, child: AppAssets.logoSVG)),
                    const SizedBox(height: 48),
                    const SignInForm(),
                    Column(
                      children: [
                        Link(
                          uri: Uri.parse('${ConfigReader.clientApi()}/reset-password'),
                          target: LinkTarget.blank,
                          builder: (BuildContext ctx, FollowLink? openLink) =>
                              TextButton(onPressed: openLink, child: Text(t(context).forgot_password)),
                        ),
                      ],
                    ),
                    if (context.isXsScreen() || context.isLargerThanMdScreen()) const SizedBox(height: 200),
                  ],
                ),
              ),
            ),
          ),
          // : Center(
          //     child: Heading(
          //     1,
          //     'do',
          //     color: AppColors.white,
          //   )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push(AppPaths.settings.path),
          child: const Icon(Icons.settings),
        ),
      ),
    );
  }
}

class SignInForm extends ConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _formKey = GlobalKey<FormState>();
    final signInState = ref.watch(signInProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final signInNotifier = ref.read(signInProvider.notifier);
    final currentUserNotifier = ref.read(currentUserProvider.notifier);

    ref.listen<SignInState>(signInProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signInOption.isSome()) {
        next.signInOption.map((signInEither) {
          signInEither.fold((l) {
            Flushbar()
                .error(l.maybeMap(
                  invalidEmailPassword: (_) => t(context).invalidThing('${t(context).email} ${t(context).password}'),
                  orElse: () => t(context).thingWithStatus(t(context).signIn, t(context).fail).firstCapital(),
                ))
                .show(context);
          }, (r) {
            authNotifier.stateChanged();
            Flushbar()
                .success(t(context).thingWithStatus(t(context).signIn, t(context).success).firstCapital())
                .show(context);
            Future.delayed(const Duration(seconds: 2), () {
              currentUserNotifier.logedIn();
              AppRouter.redirect();
            });
          });
        });
      } else {
        Flushbar().error(t(context).invalidThing('${t(context).email} ${t(context).password}')).show(context);
      }
    });
    return Form(
      key: signInNotifier.formKey,
      autovalidateMode:
          signInState.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: signInState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              labelText: t(context).email,
            ),
            onChanged: signInNotifier.emailChanged,
            validator: (_) {
              return signInState.emailAddress.isValid() ? null : t(context).invalidThing(t(context).email);
            },
            keyboardType: TextInputType.emailAddress,
          ),
          AppSizesUnit.sizedBox16,
          TextFormField(
            autovalidateMode: signInState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: t(context).password,
            ),
            obscureText: true,
            onChanged: signInNotifier.passwordChanged,
            validator: (_) => signInState.password.isEmpty ? t(context).invalidThing(t(context).password) : null,
          ),
          AppSizesUnit.sizedBox24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: signInState.isSubmitting
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          signInNotifier.signInBtnPressed();
                        },
                  child: Text(
                    t(context).signIn,
                  ),
                ).large(context),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
