import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../authentication/app/auth_provider.dart';
import '../../authentication/app/current_user_provider.dart';
import '../../authentication/app/sign_in_provider.dart';
import '../../core/helper/translate.dart';
import '../../core/view/layouts/sign_in_layout.dart';
import '../../navigation/app/router.dart';
import '../../navigation/domain/app_paths.dart';
import '../../settings/view/language_switcher.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInLayout(
      body: SignInFormWrapper(ref: ref),
    );
  }
}

class LocaleOption extends Locale {
  LocaleOption(super.languageCode);

  String get name {
    return languageName;
  }
}

class SignInFormWrapper extends StatelessWidget {
  final WidgetRef ref;
  const SignInFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // GestureDetector(
        //     onDoubleTap: () => ref.read(signInProvider.notifier).initial(),
        //     child: SizedBox(height: 100, child: AppAssets.logoSVG)),
        // const SizedBox(height: 48),
        AppSizesUnit.sizedBox24,
        Text(t(context).welcomeBack, style: Theme.of(context).textTheme.heading6),
        AppSizesUnit.sizedBox24,
        const SignInForm(),
        const SizedBox(height: 12),
        IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 2),
                  children: [
                    TextSpan(
                      text: t(context).forgotPassword,
                      style: const TextStyle(color: AppColors.orange),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(AppPaths.resetPassword.path);
                        },
                    ),
                    TextSpan(text: "\n${t(context).doesNotHaveAccount} "),
                    TextSpan(
                      text: t(context).registerHere,
                      style: const TextStyle(color: AppColors.orange),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(AppPaths.signUp.path);
                        },
                    ),
                  ],
                ),
              ),
              AppSizesUnit.sizedBox24,
              const LanguageSwitcher(),
              AppSizesUnit.sizedBox24,
            ],
          ),
        ),
      ],
    );
  }
}

class SignInForm extends HookConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final signInNotifier = ref.read(signInProvider.notifier);
    final currentUserNotifier = ref.read(currentUserProvider.notifier);
    final showPassword = useState(true);

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
              border: Theme.of(context).inputDecorationTheme.border,
              labelText: t(context).password,
              suffixIcon: FocusableActionDetector(
                mouseCursor: SystemMouseCursors.click,
                onShowHoverHighlight: (value) => {},
                child: GestureDetector(
                  onTap: () {
                    showPassword.value = !showPassword.value;
                  },
                  child: IconTheme(
                    data: IconTheme.of(context),
                    child: Icon(
                      showPassword.value ? AppIcons.visibility : AppIcons.visibilityOff,
                    ),
                  ),
                ),
              ),
            ),
            obscureText: showPassword.value,
            onChanged: signInNotifier.passwordChanged,
            validator: (_) => signInState.password.isEmpty ? t(context).invalidThing(t(context).password) : null,
          ),
          AppSizesUnit.sizedBox24,
          Row(
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
          AppSizesUnit.sizedBox8,
        ],
      ),
    );
  }
}
