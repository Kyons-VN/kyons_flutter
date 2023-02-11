// import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    return Container();
    // return GestureDetector(
    //   onTap: () => FocusScope.of(context).unfocus(),
    //   child: Scaffold(
    //     resizeToAvoidBottomInset: false,
    //     backgroundColor: AppColors.primaryBlue,
    //     body: SafeArea(
    //       child: Center(
    //         child: Container(
    //           width: context.isXsScreen() ? double.infinity : 400,
    //           padding: const EdgeInsets.symmetric(horizontal: 24),
    //           child: SingleChildScrollView(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 GestureDetector(
    //                     onDoubleTap: () => ref.read(signUpNotifierProvider.notifier).initial(),
    //                     child: SizedBox(height: 100, child: AppAssets.logoSVG)),
    //                 const SizedBox(height: 48),
    //                 const SignUpForm(),
    //                 if (context.isXsScreen() || context.isLargerThanMdScreen()) const SizedBox(height: 200),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //       // : Center(
    //       //     child: Heading(
    //       //     1,
    //       //     'do',
    //       //     color: AppColors.white,
    //       //   )),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () => context.push(AppPaths.settings.path),
    //       child: const Icon(Icons.settings),
    //     ),
    //   ),
    // );
  }
}

// class SignUpForm extends ConsumerWidget {
//   const SignUpForm({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final _formKey = GlobalKey<FormState>();
//     final signUpState = ref.watch(signUpNotifierProvider);
//     final authNotifier = ref.watch(authNotifierProvider.notifier);
//     final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
//     final currentUserNotifier = ref.read(currentUserProvider.notifier);

//     ref.listen<SignUpState>(signUpNotifierProvider, (previous, next) {
//       if (!(previous!.isSubmitting && !next.isSubmitting)) return;
//       if (next.signUpOption.isSome()) {
//         next.signUpOption.map((signUpEither) {
//           signUpEither.fold((l) {
//             Flushbar()
//                 .error(l.maybeMap(
//                   invalidEmailPassword: (_) => t(context).invalidThing('${t(context).email} ${t(context).password}'),
//                   orElse: () => firstCapital(t(context).thingWithStatus(t(context).signUp, t(context).fail)),
//                 ))
//                 .show(context);
//           }, (r) {
//             authNotifier.stateChanged();
//             Flushbar()
//                 .success(firstCapital(t(context).thingWithStatus(t(context).signUp, t(context).success)))
//                 .show(context);
//             Future.delayed(const Duration(seconds: 2), () {
//               currentUserNotifier.logedIn();
//               AppRouter.redirect();
//             });
//           });
//         });
//       } else {
//         Flushbar().error(t(context).invalidThing('${t(context).email} ${t(context).password}')).show(context);
//       }
//     });
//     return Form(
//       key: signUpNotifier.formKey,
//       autovalidateMode:
//           signUpState.shouldShowErrorMessages ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
//       child: Column(
//         children: [
//           TextFormField(
//             autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
//             decoration: InputDecoration(
//               labelText: t(context).email,
//             ),
//             onChanged: signUpNotifier.emailChanged,
//             validator: (_) {
//               return signUpState.emailAddress.isValid() ? null : t(context).invalidThing(t(context).email);
//             },
//             keyboardType: TextInputType.emailAddress,
//           ),
//           AppSizesUnit.sizedBox16,
//           TextFormField(
//             autovalidateMode: signUpState.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
//             decoration: InputDecoration(
//               border: const OutlineInputBorder(),
//               labelText: t(context).password,
//             ),
//             obscureText: true,
//             onChanged: signUpNotifier.passwordChanged,
//             validator: (_) => signUpState.password.isEmpty ? t(context).invalidThing(t(context).password) : null,
//           ),
//           AppSizesUnit.sizedBox24,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: signUpState.isSubmitting
//                       ? null
//                       : () {
//                           FocusScope.of(context).unfocus();
//                           signUpNotifier.signUpBtnPressed();
//                         },
//                   child: Text(
//                     t(context).signUp,
//                   ),
//                 ).large(context),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//         ],
//       ),
//     );
//   }
// }
