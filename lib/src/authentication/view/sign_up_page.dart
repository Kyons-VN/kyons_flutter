// import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/app/current_user_provider.dart';
import 'package:kyons_flutter/src/authentication/app/sign_up_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';
// import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
// import 'package:kyons_flutter/src/authentication/app/current_user_provider.dart';
// import 'package:kyons_flutter/src/authentication/app/sign_in_provider.dart';
// import 'package:kyons_flutter/src/authentication/app/sign_up_provider.dart';
// import 'package:kyons_flutter/src/core/helper/translate.dart';
// import 'package:kyons_flutter/src/core/view/assets.dart';
// import 'package:kyons_flutter/src/core/view/themes.dart';
// import 'package:kyons_flutter/src/navigation/app/router.dart';
// import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return Container();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.primaryBlue,
        body: SafeArea(
          child: context.isXsScreen()
              ? Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSizesUnit.medium24, vertical: AppSizesUnit.large48),
                  child: SignUpFormWrapper(ref: ref),
                )
              : Center(
                  child: SizedBox(
                    width: 434,
                    child: SignUpFormWrapper(ref: ref),
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => context.push(AppPaths.settings.path),
      //   child: const Icon(Icons.settings),
      // ),
    );
  }
}

class SignUpFormWrapper extends StatelessWidget {
  final WidgetRef ref;
  const SignUpFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onDoubleTap: () => ref.read(signUpNotifierProvider.notifier).initial(),
              child: SizedBox(height: 100, child: AppAssets.logoSVG)),
          const SizedBox(height: 48),
          const SignUpForm(),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white, height: 2),
                    children: [
                      TextSpan(
                        text: t(context).forgot_password,
                        style: const TextStyle(color: AppColors.orange),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppPaths.resetPassword.path);
                          },
                      ),
                      TextSpan(text: "\n${t(context).does_not_have_account} "),
                      TextSpan(
                        text: t(context).register_here,
                        style: const TextStyle(color: AppColors.orange),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppPaths.signUp.path);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends ConsumerWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _formKey = GlobalKey<FormState>();
    final signUpState = ref.watch(signUpNotifierProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final currentUserNotifier = ref.read(currentUserProvider.notifier);

    ref.listen<SignUpState>(signUpNotifierProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signUpOption.isSome()) {
        next.signUpOption.map((signUpEither) {
          signUpEither.fold((l) {
            Flushbar()
                .error(l.maybeMap(
                  invalidEmailPassword: (_) => t(context).invalidThing('${t(context).email} ${t(context).password}'),
                  orElse: () => t(context).thingWithStatus(t(context).signUp, t(context).fail).firstCapital(),
                ))
                .show(context);
          }, (r) {
            authNotifier.stateChanged();
            Flushbar()
                .success(t(context).thingWithStatus(t(context).signUp, t(context).success).firstCapital())
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
      key: signUpNotifier.formKey,
      autovalidateMode:
          signUpState.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              labelText: t(context).email,
            ),
            onChanged: signUpNotifier.emailChanged,
            validator: (_) {
              return signUpState.emailAddress.isValid() ? null : t(context).invalidThing(t(context).email);
            },
            keyboardType: TextInputType.emailAddress,
          ),
          AppSizesUnit.sizedBox16,
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: t(context).password,
            ),
            obscureText: true,
            onChanged: signUpNotifier.passwordChanged,
            validator: (_) => signUpState.password.isEmpty ? t(context).invalidThing(t(context).password) : null,
          ),
          AppSizesUnit.sizedBox24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: signUpState.isSubmitting
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          signUpNotifier.signUp();
                        },
                  child: Text(
                    t(context).signUp,
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
