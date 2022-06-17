import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/app/sign_in_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.primaryBlue,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 90),
                GestureDetector(
                    onDoubleTap: () => ref.read(signInProvider.notifier).initial(),
                    child: SizedBox(height: 100, child: AppAssets.logoSVG)),
                const SizedBox(height: 48),
                const SignInForm(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push(AppPaths.settings.path),
          child: const Icon(Icons.settings),
        ),
      ),
    );
  }
}

class SignInForm extends HookConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _formKey = GlobalKey<FormState>();
    final signInState = ref.watch(signInProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final signInNotifier = ref.read(signInProvider.notifier);

    ref.listen<SignInState>(signInProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signInOption.isSome()) {
        next.signInOption.map((signInEither) {
          signInEither.fold((l) {
            Flushbar()
                .error(l.maybeMap(
                  invalidEmailPassword: (_) => t(context).invalidThing('${t(context).email} ${t(context).password}'),
                  orElse: () => firstCapital(t(context).thingWithStatus(t(context).signIn, t(context).fail)),
                ))
                .show(context);
          }, (r) {
            authNotifier.stateChanged();
            Flushbar()
                .success(firstCapital(t(context).thingWithStatus(t(context).signIn, t(context).success)))
                .show(context);
            Future.delayed(const Duration(seconds: 2), () {
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
                  onPressed: () {
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
