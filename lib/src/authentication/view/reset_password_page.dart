import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/reset_password_controller.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

class ResetPasswordPage extends ConsumerWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  child: ResetPasswordFormWrapper(ref: ref),
                )
              : Center(
                  child: SizedBox(
                    width: 434,
                    child: ResetPasswordFormWrapper(ref: ref),
                  ),
                ),
        ),
      ),
    );
  }
}

class ResetPasswordFormWrapper extends StatelessWidget {
  final WidgetRef ref;
  const ResetPasswordFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(height: 100, child: AppAssets.logoSVG),
          ),
          AppSizesUnit.sizedBox48,
          const ResetPasswordForm(),
          AppSizesUnit.sizedBox24,
          TextButton(onPressed: () => context.go(AppPaths.signIn.path), child: Text(t(context).backToHome)),
          if (context.isLargerThanXsScreen()) const SizedBox(height: 200),
        ],
      ),
    );
  }
}

class ResetPasswordForm extends ConsumerWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resetPasswordState = ref.watch(resetPasswordControllerProvider);
    final resetPasswordController = ref.read(resetPasswordControllerProvider.notifier);

    ref.listen<ResetPasswordState>(resetPasswordControllerProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.apiOption.isSome()) {
        next.apiOption.map((apiEither) {
          apiEither.fold((l) {
            Flushbar()
                .error(l.maybeMap(
                  invalidEmail: (_) => t(context).invalidThing(t(context).email),
                  invalidPassword: (_) => t(context).invalidThing(t(context).password),
                  emailNotFound: (_) => t(context).emailNotFound,
                  limitExceededException: (_) => t(context).limitExceededException,
                  orElse: () => t(context).error,
                ))
                .show(context);
          }, (r) {
            if (previous.step == 1) {
              Flushbar()
                  .success(t(context).thingWithStatus(
                      t(context).pleaseCheckCodeInEmail(previous.emailAddress.getValueOrError()), t(context).success))
                  .show(context);
            } else if (previous.step == 2) {
              Flushbar()
                  .success(t(context).thingWithStatus(t(context).changePassword, t(context).success).firstCapital())
                  .show(context);
              Future.delayed(const Duration(seconds: 2), () {
                context.go(AppPaths.signIn.path);
              });
            }
          });
        });
      } else {
        Flushbar().error(t(context).invalidThing('${t(context).email} ${t(context).password}')).show(context);
      }
    });
    return Form(
      key: resetPasswordController.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: resetPasswordState.step == 1
          ? Step1(
              controller: resetPasswordController,
              state: resetPasswordState,
            )
          : Step2(
              controller: resetPasswordController,
              state: resetPasswordState,
            ),
    );
  }
}

class Step1 extends HookWidget {
  final ResetPasswordController controller;
  final ResetPasswordState state;
  const Step1({super.key, required this.controller, required this.state});

  @override
  Widget build(BuildContext context) {
    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white, height: 2);
    final isTouched = useState<bool>(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(t(context).enterEmailToGetCode, style: bodyTextStyle),
        AppSizesUnit.sizedBox24,
        TextFormField(
          autovalidateMode: isTouched.value ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).email,
          ),
          onChanged: controller.emailChanged,
          validator: (_) {
            return isTouched.value && state.emailAddress.isInvalid()
                ? t(context).invalidThing(t(context).email).firstCapital()
                : null;
          },
          keyboardType: TextInputType.emailAddress,
        ),
        AppSizesUnit.sizedBox24,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: state.isSubmitting
                ? null
                : () {
                    isTouched.value = true;
                    FocusScope.of(context).unfocus();
                    controller.sendEmailBtnPressed();
                  },
            child: Text(
              t(context).sendMeCode,
            ),
          ).large(context),
        ),
      ],
    );
  }
}

class Step2 extends HookWidget {
  final ResetPasswordController controller;
  final ResetPasswordState state;
  const Step2({super.key, required this.controller, required this.state});

  @override
  Widget build(BuildContext context) {
    final isTouched = useState<bool>(false);
    final isFocusPassword = useState<bool>(false);
    final showPassword = useState<bool>(false);
    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white, height: 2);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t(context).codeIsSend, style: bodyTextStyle),
        AppSizesUnit.sizedBox24,
        TextFormField(
          autovalidateMode: isTouched.value ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).code,
          ),
          onChanged: controller.codeChanged,
          validator: (_) {
            return isTouched.value && state.code.length != 6 ? t(context).invalidThing(t(context).code) : null;
          },
          keyboardType: TextInputType.number,
        ),
        AppSizesUnit.sizedBox8,
        TextFormField(
          autovalidateMode: isTouched.value ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.red)),
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
                  child: Icon(
                    showPassword.value ? AppIcons.visibility : AppIcons.visibilityOff,
                  ),
                ),
              ),
            ),
          ),
          obscureText: showPassword.value,
          onChanged: controller.passwordChanged,
          validator: (_) => state.password.isInvalid() && isTouched.value
              ? t(context).invalidThing(t(context).password).firstCapital()
              : null,
        ),
        AppSizesUnit.sizedBox8,
        if (isTouched.value)
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: bodyTextStyle,
              children: [
                TextSpan(text: '${t(context).passwordMustHave}:'),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateMin}:',
                  style: bodyTextStyle.copyWith(
                      color: isTouched.value && state.passwordStr.length < 8
                          ? state.password.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateUpper}:',
                  style: bodyTextStyle.copyWith(
                      color: isTouched.value && !hasUpperCase(state.passwordStr)
                          ? state.password.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidate_0}:',
                  style: bodyTextStyle.copyWith(
                      color: isTouched.value && !hasDigit(state.passwordStr)
                          ? state.password.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateSpecial}:',
                  style: bodyTextStyle.copyWith(
                      color: isTouched.value && !hasSpecialCharacters(state.passwordStr)
                          ? state.password.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
              ],
            ),
          ),
        AppSizesUnit.sizedBox24,
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: state.isSubmitting
                    ? null
                    : () {
                        isTouched.value = true;
                        FocusScope.of(context).unfocus();
                        controller.newPassword();
                      },
                child: Text(
                  t(context).changePassword,
                ),
              ).large(context),
            ),
          ],
        ),
      ],
    );
  }
}
