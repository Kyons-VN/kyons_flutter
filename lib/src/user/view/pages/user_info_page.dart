import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../../../navigation/view/app_bar.dart';
import '../../../navigation/view/app_drawer.dart';
import '../../app/update_info/update_info_controller.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

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
    final state = ref.watch(updateInfoControllerProvider);
    final controller = ref.read(updateInfoControllerProvider.notifier);

    final bodyTextStyle = Theme.of(context).textTheme.bodyMedium!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Heading(4, t(context).userInfo),
        AppSizesUnit.sizedBox24,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox.square(
              dimension: 120,
              child: SvgPicture.asset(
                'assets/Avatar.svg',
                width: 120,
                height: 120,
              ),
            ),
            AppSizesUnit.sizedBox8,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(onPressed: () {}, child: Text(t(context).selectProfilePicture)).small(context),
                  AppSizesUnit.sizedBox8,
                  Text(t(context).selectProfilePictureDesc),
                ],
              ),
            )
          ],
        ),
        AppSizesUnit.sizedBox24,
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).lastName,
          ),
          onChanged: controller.lastNameChanged,
          validator: (_) {
            return state.lastName.isEmpty ? t(context).invalidThing(t(context).lastName).firstCapital() : null;
          },
          keyboardType: TextInputType.name,
        ),
        AppSizesUnit.sizedBox8,
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).firstName,
          ),
          onChanged: controller.firstNameChanged,
          validator: (_) {
            return state.firstName.isEmpty ? t(context).invalidThing(t(context).firstName).firstCapital() : null;
          },
          keyboardType: TextInputType.name,
        ),
        AppSizesUnit.sizedBox8,
        TextFormField(
          autovalidateMode: state.shouldShowErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          decoration: InputDecoration(
            labelText: t(context).email,
          ),
          onChanged: controller.emailChanged,
          validator: (_) {
            return state.email.isValid() ? null : t(context).invalidThing(t(context).email);
          },
          keyboardType: TextInputType.emailAddress,
        ),
        AppSizesUnit.sizedBox24,
        ElevatedButton(onPressed: controller.submit, child: Text(t(context).updateUserInfo)),
      ],
    );
  }
}
