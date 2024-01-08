import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

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

class SignInFormWrapper extends HookWidget {
  final WidgetRef ref;
  const SignInFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    final focusForgotPassword = useState(false);
    final focusRegisterHere = useState(false);
    final focusNode = useFocusNode(onKey: (node, event) {
      print('OK');
      if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
        // ref.read(signInProvider.notifier).signInBtnPressed();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    });
    // useEffect(() {
    //   focusNode.requestFocus();
    //   return () {
    //     focusNode.dispose();
    //   };
    // }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (context.isLargerThanMdScreen())
          GestureDetector(
              onDoubleTap: () => ref.read(signInProvider.notifier).initial(),
              child: SizedBox(height: 48, child: AppAssets.logoHorizontalSVG)),
        AppSizesUnit.sizedBox24,
        Text(t(context).welcomeBack, style: Theme.of(context).textTheme.heading6),
        AppSizesUnit.sizedBox24,
        SignInForm(focusNode),
        const SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FocusableActionDetector(
              mouseCursor: SystemMouseCursors.click,
              onFocusChange: (isFocused) => focusForgotPassword.value = isFocused,
              // onShowHoverHighlight: (isHovered) => focusForgotPassword.value = isHovered,
              actions: <Type, Action<Intent>>{
                ActivateIntent: CallbackAction<ActivateIntent>(
                  onInvoke: (ActivateIntent intent) {
                    context.go(AppPaths.resetPassword.path);
                    return true;
                  },
                ),
              },
              child: GestureDetector(
                onTap: () => context.go(AppPaths.resetPassword.path),
                child: Text(
                  t(context).forgotPassword,
                  style: Theme.of(context)
                      .textTheme
                      .textLink
                      .copyWith(backgroundColor: focusForgotPassword.value ? AppColors.lightOrange4 : null),
                ),
              ),
            ),
            // TextButton(
            //     onPressed: () => context.go(AppPathstextLinkth), child: Text(t(context).forgotPassword)),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 0.5),
                children: [
                  // TextSpan(
                  //   text: t(context).forgotPassword,
                  //   style: Theme.of(context).textTheme.textLink,
                  //   recognizer: TapGestureRecognizer()
                  //     ..onTap = () {
                  //       context.go(AppPaths.resetPassword.path);
                  //     },
                  // ),
                  TextSpan(text: "\n${t(context).doesNotHaveAccount} "),
                  WidgetSpan(
                    child: FocusableActionDetector(
                      mouseCursor: SystemMouseCursors.click,
                      onFocusChange: (isFocused) => focusRegisterHere.value = isFocused,
                      // onShowHoverHighlight: (isHovered) => focusRegisterHere.value = isHovered,
                      actions: <Type, Action<Intent>>{
                        ActivateIntent: CallbackAction<ActivateIntent>(
                          onInvoke: (ActivateIntent intent) {
                            context.go(AppPaths.signUp.path);
                            return true;
                          },
                        ),
                      },
                      child: GestureDetector(
                          onTap: () => context.go(AppPaths.signUp.path),
                          child: Text(
                            t(context).registerHere,
                            style: Theme.of(context)
                                .textTheme
                                .textLink
                                .copyWith(backgroundColor: focusRegisterHere.value ? AppColors.lightOrange4 : null),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            AppSizesUnit.sizedBox24,
            const LanguageSwitcher(),
            AppSizesUnit.sizedBox24,
          ],
        ),
      ],
    );
  }
}

class SignInForm extends HookConsumerWidget {
  final FocusNode focusNode;
  const SignInForm(this.focusNode, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final authController = ref.read(authNotifierProvider.notifier);
    final signInController = ref.read(signInProvider.notifier);
    final currentUserController = ref.read(currentUserProvider.notifier);
    final showPassword = useState(true);
    final isFocusPassword = useState<bool>(false);
    final focusNodePassword = useFocusNode();

    ref.listen<SignInState>(signInProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signInOption.isSome()) {
        next.signInOption.map((signInEither) {
          signInEither.fold((l) {
            // ref.read(trackingNotifierProvider.notifier).resume();
            Flushbar()
                .error(l.maybeMap(
                  invalidEmailPassword: (_) =>
                      '${t(context).invalidThing('${t(context).email} ${t(context).password}')}. ${t(context).pleaseTryAgain}',
                  orElse: () => t(context).thingWithStatus(t(context).signIn, t(context).fail).firstCapital(),
                ))
                .show(context);
          }, (r) {
            authController.stateChanged();
            Flushbar()
                .success(t(context).thingWithStatus(t(context).signIn, t(context).success).firstCapital())
                .show(context);
            TextInput.finishAutofillContext();
            Future.delayed(const Duration(seconds: 2), () {
              currentUserController.logedIn();
              AppRouter.redirect();
            });
          });
        });
      } else {
        Flushbar().error(t(context).invalidThing('${t(context).email} ${t(context).password}')).show(context);
      }
    });
    return Form(
      key: signInController.formKey,
      autovalidateMode:
          signInState.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      child: AutofillGroup(
        child: Column(
          children: [
            TextFormField(
              focusNode: focusNode,
              autofillHints: const [AutofillHints.email],
              autofocus: true,
              autovalidateMode:
                  signInState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: t(context).email,
              ),
              onChanged: signInController.emailChanged,
              validator: (_) {
                return signInState.emailAddress.isValid() ? null : t(context).invalidThing(t(context).email);
              },
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(focusNodePassword);
              },
            ),
            AppSizesUnit.sizedBox16,
            TextFormField(
              focusNode: focusNodePassword,
              autofillHints: const [AutofillHints.password],
              autovalidateMode:
                  signInState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: t(context).password,
                suffixIcon: FocusableActionDetector(
                  mouseCursor: SystemMouseCursors.click,
                  onShowFocusHighlight: (isFocused) => {
                    isFocusPassword.value = isFocused,
                  },
                  actions: <Type, Action<Intent>>{
                    ActivateIntent: CallbackAction<ActivateIntent>(
                      onInvoke: (ActivateIntent intent) {
                        showPassword.value = !showPassword.value;
                        return true;
                      },
                    ),
                  },
                  child: GestureDetector(
                    onTap: () {
                      showPassword.value = !showPassword.value;
                    },
                    child: IconTheme(
                      data: IconTheme.of(context).copyWith(color: isFocusPassword.value ? AppColors.primaryBlue : null),
                      child: SizedBox.square(
                        dimension: 48,
                        child: Icon(
                          showPassword.value ? AppIcons.visibility : AppIcons.visibilityOff,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              obscureText: showPassword.value,
              onChanged: signInController.passwordChanged,
              validator: (_) => signInState.password.isEmpty ? t(context).invalidThing(t(context).password) : null,
              onFieldSubmitted: (_) {
                signInController.signInBtnPressed();
              },
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
                            signInController.signInBtnPressed();
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
      ),
    );
  }
}
