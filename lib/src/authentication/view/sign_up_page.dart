import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:shared_package/shared_package.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../authentication/app/auth_provider.dart';
import '../../authentication/app/sign_up_provider.dart';
import '../../core/helper/translate.dart';
import '../../core/view/layouts/sign_in_layout.dart';
import '../../navigation/domain/app_paths.dart';
import '../../settings/view/language_switcher.dart';
import '../data/cities_list.dart';
import '../data/grades_list.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return Container();
    return SignInLayout(
      body: SignUpFormWrapper(ref: ref),
    );
  }
}

class SignUpFormWrapper extends StatelessWidget {
  final WidgetRef ref;
  const SignUpFormWrapper({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSizesUnit.sizedBox24,
          SignUpForm(),
          AppSizesUnit.sizedBox24,
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
    final state = ref.watch(signUpNotifierProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final controller = ref.read(signUpNotifierProvider.notifier);

    final step = useState(0);
    final invalidEmails = useState<List<String>>([]);
    final birthdateController = useTextEditingController(text: state.birthdate.date);
    final gradeController = useTextEditingController(text: state.grade);
    final addressController = useTextEditingController(text: state.address);

    ref.listen<SignUpState>(signUpNotifierProvider, (previous, next) {
      if (!(previous!.isSubmitting && !next.isSubmitting)) return;
      if (next.signUpOption.isSome()) {
        next.signUpOption.map((signUpEither) {
          signUpEither.fold((l) {
            l.maybeMap(
              orElse: () {},
              emailAlreadyUsed: (_) {
                invalidEmails.value = [...invalidEmails.value, state.emailAddress.getValueOrError()];
                step.value = 0;
              },
              invalidParam: (invalid) {
                step.value = 0;
                if (invalid.param == InvalidParams.email.value) {
                  invalidEmails.value = [...invalidEmails.value, state.emailAddress.getValueOrError()];
                }
              },
            );
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

    return Form(
      key: controller.formKey,
      autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (step.value == 0) ...[
            Text(
              t(context).startExploringKnowledge,
              style: Theme.of(context).textTheme.heading6,
            ),
            AppSizesUnit.sizedBox8,
            Text(
              t(context).readyToLearn,
            ),
            AppSizesUnit.sizedBox24,
            TextFormField(
              key: const Key('signUpForm_lastName_textField'),
              // controller: lastNameController,
              autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: '${t(context).lastName} (*)',
              ),
              onChanged: controller.lastNameChanged,
              validator: (_) {
                return state.lastName.isEmpty ? t(context).invalidThing(t(context).lastName).firstCapital() : null;
              },
              keyboardType: TextInputType.name,
              initialValue: state.lastName,
            ),
            AppSizesUnit.sizedBox8,
            TextFormField(
              key: const Key('signUpForm_firstName_textField'),
              autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: '${t(context).firstName} (*)',
              ),
              onChanged: controller.firstNameChanged,
              validator: (_) {
                return state.firstName.isEmpty ? t(context).invalidThing(t(context).firstName).firstCapital() : null;
              },
              keyboardType: TextInputType.name,
              initialValue: state.firstName,
            ),
            AppSizesUnit.sizedBox8,
            TextFormField(
              key: const Key('signUpForm_email_textField'),
              autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: '${t(context).email} (*)',
              ),
              onChanged: controller.emailChanged,
              validator: (email) {
                if (invalidEmails.value.contains(email)) {
                  return t(context).emailAlreadyUsed;
                }
                return state.emailAddress.isInvalid() ? t(context).invalidThing(t(context).email).firstCapital() : null;
              },
              keyboardType: TextInputType.emailAddress,
              initialValue: state.emailAddress.isValid() ? state.emailAddress.getValueOrError() : '',
            ),
            AppSizesUnit.sizedBox8,
            TextFormField(
              key: const Key('signUpForm_phone_textField'),
              autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: '${t(context).phone} (*)',
              ),
              onChanged: (value) {
                controller.phoneChanged(value);
              },
              validator: (_) {
                return state.phone.isInvalid() ? t(context).invalidThing(t(context).phone).firstCapital() : null;
              },
              keyboardType: TextInputType.name,
              initialValue: state.phone.isValid() ? state.phone.getValueOrError() : '',
            ),
            AppSizesUnit.sizedBox24,
            // if (signUpState.shouldShowErrorMessages)
            //   Text(
            //     signUpState.phone.isInvalid() ? t(context).invalidThing(t(context).password).firstCapital() : '',
            //     style: const TextStyle(color: AppColors.red),
            //   ),
            // AppSizesUnit.sizedBox8,
            CheckboxFormField(
              contentPadding: EdgeInsets.zero,
              label: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: state.shouldShowErrorMessages && !state.isAgreedToTerms
                          ? AppColors.red
                          : AppColors.primaryBlue),
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
              onChanged: controller.agreeChanged,
              initialValue: state.isAgreedToTerms,
            ),
          ],
          if (step.value == 1) ...[
            Text(
              t(context).beforeStart,
              style: Theme.of(context).textTheme.heading6,
            ),
            AppSizesUnit.sizedBox8,
            Text(
              t(context).kyonsNeeds,
            ),
            Text(
              t(context).noteYouCanChange,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontStyle: FontStyle.italic),
            ),
            AppSizesUnit.sizedBox24,
            Text(
              t(context).yourBirthdate,
            ),
            AppSizesUnit.sizedBox6,
            TextField(
              controller: birthdateController,
              decoration: InputDecoration(
                labelText: t(context).birthdate,
                suffixIcon: const Icon(AppIcons.calendar),
              ),
              onTap: () => showDatePicker(
                context: context,
                initialDate: state.birthdate,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                helpText: t(context).yourBirthdate, // Can be used as title
                cancelText: t(context).cancel,
                confirmText: t(context).ok,
              ).then((value) {
                if (value != null) {
                  birthdateController.text = value.date;
                  controller.birthdateChanged(value);
                }
                FocusScope.of(context).unfocus();
              }),
              keyboardType: TextInputType.datetime,
              // initialValue: state.birthdate.date,
              readOnly: true,
            ),
            AppSizesUnit.sizedBox8,
            Text(
              t(context).yourGrade,
            ),
            AppSizesUnit.sizedBox6,
            LayoutBuilder(builder: (context, constrains) {
              return DropdownMenu<String>(
                width: constrains.maxWidth,
                controller: gradeController,
                dropdownMenuEntries: gradesList
                    .map((grade) => DropdownMenuEntry<String>(
                          value: grade,
                          label: grade,
                        ))
                    .toList(),
                onSelected: (grade) => controller.gradeChanged(grade!),
              );
            }),
            AppSizesUnit.sizedBox8,
            Text(
              t(context).whatIsSchool,
            ),
            AppSizesUnit.sizedBox6,
            TextFormField(
              key: const Key('signUpForm_school_textField'),
              decoration: InputDecoration(
                labelText: '${t(context).schoolPlaceholder} (*)',
              ),
              onChanged: controller.schoolChanged,
              keyboardType: TextInputType.text,
              initialValue: state.school,
            ),
            AppSizesUnit.sizedBox8,
            Text(
              t(context).whereIsYourAddress,
            ),
            AppSizesUnit.sizedBox6,
            LayoutBuilder(builder: (context, constrains) {
              return DropdownMenu<String>(
                width: constrains.maxWidth,
                controller: addressController,
                dropdownMenuEntries: citiesList
                    .map((city) => DropdownMenuEntry<String>(
                          value: city,
                          label: city,
                        ))
                    .toList(),
                onSelected: (city) => controller.addressChanged(city!),
              );
            }),
          ],
          AppSizesUnit.sizedBox24,
          Row(
            children: [
              Expanded(
                child: step.value == 0
                    ? ElevatedButton(
                        onPressed: state.isSubmitting ||
                                (state.shouldShowErrorMessages &&
                                    (state.firstName.isEmpty ||
                                        state.lastName.isEmpty ||
                                        state.emailAddress.isInvalid() ||
                                        state.phone.isInvalid() ||
                                        !state.isAgreedToTerms))
                            ? null
                            : () {
                                FocusScope.of(context).unfocus();
                                controller.showValidation();
                                if (!(state.firstName.isEmpty ||
                                    state.lastName.isEmpty ||
                                    state.emailAddress.isInvalid() ||
                                    state.phone.isInvalid() ||
                                    !state.isAgreedToTerms)) step.value = 1;
                              },
                        child: Text(
                          t(context).continueText,
                        ),
                      ).large(context)
                    : Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              step.value = 0;
                            },
                            child: Text(
                              t(context).back,
                            ),
                          ).large(context),
                          AppSizesUnit.sizedBox8,
                          Expanded(
                            child: ElevatedButton(
                              onPressed: state.isSubmitting
                                  ? null
                                  : () {
                                      FocusScope.of(context).unfocus();
                                      controller.signUpBtnPressed();
                                    },
                              child: Text(
                                t(context).signUp,
                              ),
                            ).large(context),
                          ),
                        ],
                      ),
              ),
            ],
          ),
          if (step.value == 0) ...[
            AppSizesUnit.sizedBox24,
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
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
            AppSizesUnit.sizedBox24,
            const LanguageSwitcher(),
          ]
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://kyons.vn/Terms%20and%20Conditions.pdf';
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
