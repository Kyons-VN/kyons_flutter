import 'package:boxy/flex.dart';
import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets/student_assets.dart';
import 'package:shared_package/shared_package.dart';

class SignInLayout extends StatelessWidget {
  final Widget body;
  const SignInLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: context.isXsScreen()
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(gradient: linearGradient(177.7, ['#F1F5F9 85.73%', '#DEEFF9 100%'])),
                  child: Stack(
                    children: [
                      Positioned(top: 185, right: -16, child: StudentAssets.planetImageXs1),
                      Positioned(bottom: -71, left: -35, child: StudentAssets.planetImageXs2),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 204,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppSizesUnit.medium24,
                                    vertical: AppSizesUnit.large32,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: StudentAssets.heroImageXs,
                                        alignment: Alignment.bottomCenter,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(AppSizesUnit.medium16),
                                          bottomRight: Radius.circular(AppSizesUnit.medium16))),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [AppAssets.logoHorizontalWhite],
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          t(context).knowledgeStart,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width < 434 + AppSizesUnit.large48
                                  ? MediaQuery.of(context).size.width - AppSizesUnit.large48
                                  : 434,
                              child: body,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  //152, 231, 250 0.7142857142857143
                  decoration: BoxDecoration(gradient: linearGradient(177.7, ['#F1F5F9 85.73%', '#DEEFF9 100%'])),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Stack(
                      children: [
                        Positioned.directional(
                          textDirection: Directionality.of(context),
                          bottom: -constraints.maxHeight * 0.09,
                          start: -constraints.maxWidth * 0.05,
                          child: StudentAssets.planet,
                        ),
                        BoxyRow(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Center(
                                    child: SizedBox(
                                        width: 434,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: AppSizesUnit.medium24, vertical: AppSizesUnit.large48),
                                          child: body,
                                        )))),
                            // ),
                            Stack(
                              children: [
                                StudentAssets.heroImage,
                                Positioned.fromRelativeRect(
                                    rect: const RelativeRect.fromLTRB(100, 100, 100, 100),
                                    child: const Heading(
                                      1,
                                      'Tri thức khởi đầu từ\n“Tại sao”?',
                                      color: AppColors.white,
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ],
                    );
                  }),
                ),
          // : Center(
          //     child: Heading(
          //     1,
          //     'do',
          //     color: AppColors.white,
          //   )),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => context.push(AppPaths.settings.path),
        //   child: const Icon(Icons.settings),
        // ),
      ),
    );
  }
}
