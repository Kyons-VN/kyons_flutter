import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/app/sign_up_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';
import 'package:url_launcher/url_launcher.dart';

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
      ),
    );
  }
}

class SignUpFormWrapper extends StatelessWidget {
  final WidgetRef ref;
  const SignUpFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white, height: 2);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: GestureDetector(
                onDoubleTap: () => ref.read(signUpNotifierProvider.notifier).initial(),
                child: SizedBox(height: 100, child: AppAssets.logoSVG)),
          ),
          AppSizesUnit.sizedBox48,
          Text(
            t(context).readyToLearn,
            style: bodyTextStyle,
          ),
          AppSizesUnit.sizedBox24,
          const SignUpForm(),
          // const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: bodyTextStyle,
                    children: [
                      // TextSpan(
                      //   text: t(context).forgot_password,
                      //   style: const TextStyle(color: AppColors.orange),
                      //   recognizer: TapGestureRecognizer()
                      //     ..onTap = () {
                      //       context.go(AppPaths.resetPassword.path);
                      //     },
                      // ),
                      TextSpan(text: "\n${t(context).alreadyHaveAccount} "),
                      TextSpan(
                        text: t(context).signIn,
                        style: const TextStyle(color: AppColors.orange),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppPaths.signIn.path);
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

class SignUpForm extends HookConsumerWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _formKey = GlobalKey<FormState>();
    final signUpState = ref.watch(signUpNotifierProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);

    final showPassword = useState(true);
    final isFocusPassword = useState(false);
    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white, height: 2);

    ref.listen<SignUpState>(signUpNotifierProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signUpOption.isSome()) {
        next.signUpOption.map((signUpEither) {
          signUpEither.fold((l) {
            Flushbar()
                .error(l.maybeMap(
                  invalidEmailPassword: (_) => t(context).invalidThing('${t(context).email} ${t(context).password}'),
                  emailAlreadyUsed: (_) => t(context).emailAlreadyUsed,
                  orElse: () => t(context).thingWithStatus(t(context).signUp, t(context).fail).firstCapital(),
                ))
                .show(context);
          }, (r) {
            authNotifier.stateChanged();
            Flushbar()
                .success(t(context).thingWithStatus(t(context).signUp, t(context).success).firstCapital())
                .show(context);
            Future.delayed(const Duration(seconds: 2), () {
              context.go(AppPaths.signIn.path);
            });
          });
        });
      } else {
        Flushbar().error(t(context).invalidThing('${t(context).email} ${t(context).password}')).show(context);
      }
    });

    FocusNode _focusNode = FocusNode();

    return Form(
      key: signUpNotifier.formKey,
      autovalidateMode:
          signUpState.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              labelText: t(context).lastName,
            ),
            onChanged: signUpNotifier.lastNameChanged,
            validator: (_) {
              return signUpState.lastName.isEmpty ? t(context).invalidThing(t(context).lastName).firstCapital() : null;
            },
            keyboardType: TextInputType.name,
          ),
          AppSizesUnit.sizedBox8,
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              labelText: t(context).firstName,
            ),
            onChanged: signUpNotifier.firstNameChanged,
            validator: (_) {
              return signUpState.firstName.isEmpty
                  ? t(context).invalidThing(t(context).firstName).firstCapital()
                  : null;
            },
            keyboardType: TextInputType.name,
          ),
          AppSizesUnit.sizedBox8,
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            decoration: InputDecoration(
              labelText: t(context).email,
            ),
            onChanged: signUpNotifier.emailChanged,
            validator: (_) {
              return signUpState.emailAddress.isInvalid()
                  ? t(context).invalidThing(t(context).email).firstCapital()
                  : null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          AppSizesUnit.sizedBox8,
          TextFormField(
            autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
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
            onChanged: signUpNotifier.passwordChanged,
            validator: (_) =>
                signUpState.password.isInvalid() ? t(context).invalidThing(t(context).password).firstCapital() : null,
          ),
          AppSizesUnit.sizedBox8,
          if (signUpState.shouldShowErrorMessages)
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: bodyTextStyle,
                children: [
                  TextSpan(text: '${t(context).passwordMustHave}:'),
                  TextSpan(
                    text: '\n - ${t(context).passwordValidateMin}:',
                    style: bodyTextStyle.copyWith(
                        color: signUpState.shouldShowErrorMessages && signUpState.passwordStr.length < 8
                            ? signUpState.password.value.fold((_) => AppColors.red, (_) => null)
                            : null),
                  ),
                  TextSpan(
                    text: '\n - ${t(context).passwordValidateUpper}:',
                    style: bodyTextStyle.copyWith(
                        color: signUpState.shouldShowErrorMessages && !hasUpperCase(signUpState.passwordStr)
                            ? signUpState.password.value.fold((_) => AppColors.red, (_) => null)
                            : null),
                  ),
                  TextSpan(
                    text: '\n - ${t(context).passwordValidate_0}:',
                    style: bodyTextStyle.copyWith(
                        color: signUpState.shouldShowErrorMessages && !hasDigit(signUpState.passwordStr)
                            ? signUpState.password.value.fold((_) => AppColors.red, (_) => null)
                            : null),
                  ),
                  TextSpan(
                    text: '\n - ${t(context).passwordValidateSpecial}:',
                    style: bodyTextStyle.copyWith(
                        color: signUpState.shouldShowErrorMessages && !hasSpecialCharacters(signUpState.passwordStr)
                            ? signUpState.password.value.fold((_) => AppColors.red, (_) => null)
                            : null),
                  ),
                ],
              ),
            ),
          AppSizesUnit.sizedBox8,
          CheckboxFormField(
            label: RichText(
              text: TextSpan(
                style: bodyTextStyle.copyWith(
                    color: signUpState.shouldShowErrorMessages && !signUpState.isAgreedToTerms
                        ? AppColors.red
                        : AppColors.white),
                children: [
                  TextSpan(text: t(context).iAgreePrivacy),
                  TextSpan(
                    text: t(context).linkHere,
                    style: const TextStyle(color: AppColors.orange),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL();
                      },
                  ),
                ],
              ),
            ),
            onChanged: signUpNotifier.agreeChanged,
          ),
          AppSizesUnit.sizedBox8,
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: signUpState.isSubmitting
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          signUpNotifier.signUpBtnPressed();
                        },
                  child: Text(
                    t(context).signUp,
                  ),
                ).large(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://student.kyons.vn/terms-of-service';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

class DoSomethingIntent extends Intent {
  const DoSomethingIntent() : super();
}
