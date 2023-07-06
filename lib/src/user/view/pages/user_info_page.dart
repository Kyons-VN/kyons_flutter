import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
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
    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.user),
      endDrawer: const AppDrawer(),
      body: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizesUnit.medium24),
            child: UserInfoForm(),
          ),
        ),
      ),
    );
  }
}

typedef OnPickImageCallback = void Function(double? maxWidth, double? maxHeight, int? quality);

class UserInfoForm extends HookConsumerWidget {
  final ImagePicker _picker = ImagePicker();
  final TextEditingController maxWidthController = TextEditingController();
  final TextEditingController maxHeightController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();
  UserInfoForm({super.key});

  // Future<void> _displayPickImageDialog(BuildContext context, OnPickImageCallback onPick) async {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: const Text('Add optional parameters'),
  //           content: Column(
  //             children: <Widget>[
  //               TextField(
  //                 controller: maxWidthController,
  //                 keyboardType: const TextInputType.numberWithOptions(decimal: true),
  //                 decoration: const InputDecoration(hintText: 'Enter maxWidth if desired'),
  //               ),
  //               TextField(
  //                 controller: maxHeightController,
  //                 keyboardType: const TextInputType.numberWithOptions(decimal: true),
  //                 decoration: const InputDecoration(hintText: 'Enter maxHeight if desired'),
  //               ),
  //               TextField(
  //                 controller: qualityController,
  //                 keyboardType: TextInputType.number,
  //                 decoration: const InputDecoration(hintText: 'Enter quality if desired'),
  //               ),
  //             ],
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               child: const Text('CANCEL'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //             TextButton(
  //                 child: const Text('PICK'),
  //                 onPressed: () {
  //                   final double? width =
  //                       maxWidthController.text.isNotEmpty ? double.parse(maxWidthController.text) : null;
  //                   final double? height =
  //                       maxHeightController.text.isNotEmpty ? double.parse(maxHeightController.text) : null;
  //                   final int? quality = qualityController.text.isNotEmpty ? int.parse(qualityController.text) : null;
  //                   onPick(width, height, quality);
  //                   Navigator.of(context).pop();
  //                 }),
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(updateInfoControllerProvider);
    final controller = ref.read(updateInfoControllerProvider.notifier);
    final imageFile = useState<XFile?>(null);
    final retrieveDataError = useState<String?>(null);

    final isMounted = useIsMounted();
    final pickImageError = useState<String?>(null);

    // Future<void> onImageButtonPressed(ImageSource source, {BuildContext? context}) async {
    //   await _displayPickImageDialog(context!, (double? maxWidth, double? maxHeight, int? quality) async {
    //     try {
    //       final XFile? pickedFile = await _picker.pickImage(
    //         source: source,
    //         maxWidth: maxWidth,
    //         maxHeight: maxHeight,
    //         imageQuality: quality,
    //       );
    //       imageFile.value = pickedFile;
    //     } catch (e) {
    //       print(e);
    //     }
    //   });
    // }

    Text? _getRetrieveErrorWidget() {
      if (retrieveDataError.value != null) {
        final Text result = Text(retrieveDataError.value!);
        retrieveDataError.value = null;
        return result;
      }
      return null;
    }

    Widget previewImages() {
      final Text? retrieveError = _getRetrieveErrorWidget();
      if (retrieveError != null) {
        return retrieveError;
      }
      if (imageFile.value != null) {
        return Semantics(
          label: 'image_picker_example_picked_images',
          child: kIsWeb ? Image.network(imageFile.value!.path) : Image.file(File(imageFile.value!.path)),
        );
      } else if (pickImageError.value != null) {
        return Text(
          'Pick image error: $pickImageError',
          textAlign: TextAlign.center,
        );
      } else {
        return SvgPicture.asset(
          'assets/Avatar.svg',
          width: 120,
          height: 120,
        );
      }
    }

    Future<void> retrieveLostData() async {}

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
              child: Center(
                child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                    ? FutureBuilder<void>(
                        future: retrieveLostData(),
                        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return const Text(
                                'You have not yet picked an image.',
                                textAlign: TextAlign.center,
                              );
                            case ConnectionState.done:
                              return previewImages();
                            case ConnectionState.active:
                              if (snapshot.hasError) {
                                return Text(
                                  'Pick image/video error: ${snapshot.error}}',
                                  textAlign: TextAlign.center,
                                );
                              } else {
                                return const Text(
                                  'You have not yet picked an image.',
                                  textAlign: TextAlign.center,
                                );
                              }
                          }
                        },
                      )
                    : previewImages(),
              ),
              //   child: kIsWeb && imageFile.value != null
              //       ? Image.network(imageFile.value!.path)
              //       : SvgPicture.asset(
              //           'assets/Avatar.svg',
              //           width: 120,
              //           height: 120,
              //         ),
            ),
            AppSizesUnit.sizedBox8,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                          onPressed: () => showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            try {
                                              final XFile? pickedFile = await _picker.pickImage(
                                                source: ImageSource.camera,
                                                maxWidth: 120,
                                                maxHeight: 120,
                                                imageQuality: 100,
                                              );
                                              imageFile.value = pickedFile;
                                            } catch (e) {
                                              pickImageError.value = e.toString();
                                            }
                                            // use riverpod to get context
                                            if (isMounted()) {
                                              // ignore: use_build_context_synchronously
                                              context.pop();
                                            }
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(AppSizesUnit.medium16),
                                            child: Text(t(context).takeProfilePicture),
                                          ),
                                        ),
                                      ),
                                      const Divider(),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            try {
                                              final XFile? pickedFile = await _picker.pickImage(
                                                source: ImageSource.gallery,
                                                maxWidth: 120,
                                                maxHeight: 120,
                                                imageQuality: 100,
                                              );
                                              imageFile.value = pickedFile;
                                            } catch (e) {
                                              pickImageError.value = e.toString();
                                            }
                                            // use riverpod to get context
                                            if (isMounted()) {
                                              // ignore: use_build_context_synchronously
                                              context.pop();
                                            }
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(AppSizesUnit.medium16),
                                            child: Text(t(context).selectImageFromGallery),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                          child: Text(t(context).selectProfilePicture))
                      .small(context),
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
