import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../../core/view/assets/student_assets.dart';

class AttributesWidget extends HookWidget {
  const AttributesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Heading(7, t(context).yourAttributes),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(children: [
                const Icon(
                  AppIcons.help,
                  size: AppSizesUnit.medium16,
                ),
                AppSizesUnit.sizedBox6,
                Text(t(context).whatAreThese),
              ]),
            ),
          ),
        ]),
        AppSizesUnit.sizedBox16,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSizesUnit.medium16,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryBlue,
                AppColors.blueGray900,
              ],
              stops: [0.0, 0.2],
              transform: GradientRotation(0.0),
            ),
            boxShadow: AppColors.shadow3,
            color: AppColors.blueGray900,
          ),
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          child: Flex(
            direction: context.isLargerThanMdScreen() ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: context.isXsScreen() ? CrossAxisAlignment.stretch : CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: context.isLargerThanMdScreen() ? 224 : null,
                child: StudentAssets.attributes,
              ),
              RotatedBox(
                  quarterTurns: context.isLargerThanMdScreen() ? 1 : 0,
                  child: Container(padding: const EdgeInsets.only(top: 16), width: 224, child: const Divider())),
              Container(
                padding: const EdgeInsets.all(AppSizesUnit.medium16),
                child: SizedBox(
                  width: 192,
                  child: Column(
                    children: [
                      AppSizesUnit.sizedBox16,
                      AppSizesUnit.sizedBox16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedSize(
                            duration: const Duration(milliseconds: 300),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  AppSizesUnit.large40,
                                ),
                                color: AppColors.white,
                              ),
                              padding: const EdgeInsets.all(AppSizesUnit.small4),
                              width: AppSizesUnit.large40,
                              height: AppSizesUnit.large40,
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: currentIndex.value == 0 ? StudentAssets.speed : StudentAssets.speedGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSizesUnit.sizedBox24,
                      Heading(6, t(context).secrectFeature, color: AppColors.white, textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
