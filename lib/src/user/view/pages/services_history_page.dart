import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:shared_package/shared_package.dart';

import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_bar.dart';
import '../../../navigation/view/app_drawer.dart';
import '../../app/change_password/change_password_controller.dart';

class ServicesHistoryPage extends StatelessWidget {
  const ServicesHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(backPath: AppPaths.user),
      endDrawer: AppDrawer(),
      body: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppSizesUnit.medium24),
            child: ChangePasswordForm(),
          ),
        ),
      ),
    );
  }
}

class ChangePasswordForm extends HookConsumerWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(changePasswordControllerProvider);
    final controller = ref.read(changePasswordControllerProvider.notifier);

    final showPassword = useState(true);
    final isFocusPassword = useState(false);
    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Heading(4, t(context).changePassword),
        AppSizesUnit.sizedBox24,
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).enterOldPassword,
          ),
          onChanged: controller.oldPasswordChanged,
          validator: (_) {
            return state.oldPassword.isNotEmpty ? null : t(context).invalidThing(t(context).email);
          },
          keyboardType: TextInputType.emailAddress,
        ),
        AppSizesUnit.sizedBox8,
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.red)),
            labelText: t(context).enterNewPassword,
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
          onChanged: controller.newPasswordChanged,
          validator: (_) =>
              state.newPassword.isInvalid() ? t(context).invalidThing(t(context).password).firstCapital() : null,
        ),
        AppSizesUnit.sizedBox8,
        if (state.shouldShowErrorMessages) ...[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: bodyTextStyle,
              children: [
                TextSpan(text: '${t(context).passwordMustHave}:'),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateMin}:',
                  style: bodyTextStyle.copyWith(
                      color: state.shouldShowErrorMessages && state.newPasswordStr.length < 8
                          ? state.newPassword.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateUpper}:',
                  style: bodyTextStyle.copyWith(
                      color: state.shouldShowErrorMessages && !state.newPasswordStr.hasUpperCase
                          ? state.newPassword.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidate_0}:',
                  style: bodyTextStyle.copyWith(
                      color: state.shouldShowErrorMessages && !state.newPasswordStr.hasDigit
                          ? state.newPassword.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
                TextSpan(
                  text: '\n - ${t(context).passwordValidateSpecial}:',
                  style: bodyTextStyle.copyWith(
                      color: state.shouldShowErrorMessages && !state.newPasswordStr.hasSpecialCharacters
                          ? state.newPassword.value.fold((_) => AppColors.red, (_) => null)
                          : null),
                ),
              ],
            ),
          ),
          AppSizesUnit.sizedBox8,
        ],
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).confirmNewPassword,
          ),
          onChanged: controller.confirmPasswordChanged,
          validator: (_) {
            return state.oldPassword.isEmpty || state.notMatch
                ? t(context).invalidThing(t(context).confirmPassword)
                : null;
          },
          keyboardType: TextInputType.emailAddress,
        ),
        AppSizesUnit.sizedBox24,
        ElevatedButton(onPressed: controller.submit, child: Text(t(context).changePassword)),
      ],
    );
  }
}
