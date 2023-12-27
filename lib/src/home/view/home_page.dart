import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/view/top_menu.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../../core/view/assets/student_assets.dart';
import '../../core/view/widgets/large_btn.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../navigation/domain/app_paths.dart';
import '../../navigation/view/app_drawer.dart';
import '../app/home_provider.dart';
import 'attributes_widget.dart';

class HomePage extends StatelessWidget {
  final bool isShowHomeOptions;
  const HomePage({super.key, this.isShowHomeOptions = false});

  @override
  Widget build(BuildContext context) {
    // final homeNotifier = ref.read(homeNotifierProvider.notifier);
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final homeState = ref.read(homeNotifierProvider);
    //   if (homeState.studentProgramsOption.isNone()) {
    //     homeNotifier.init().then((value) {
    //       if (isShowHomeOptions) context.go(AppPaths.mockTestLearningGoal.path);
    //     });
    //   }
    // });
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: context.isXsScreen()
              ? CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      actions: const [
                        SettingsButton(),
                        AppSizesUnit.sizedBox16,
                      ],
                      leadingWidth: MediaQuery.of(context).size.width - AppSizesUnit.medium16 * 2,
                      toolbarHeight: 100,
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizesUnit.medium16,
                          vertical: AppSizesUnit.medium16,
                        ),
                        child: Row(
                          children: [
                            StudentAssets.avatar,
                            AppSizesUnit.sizedBox8,
                            Heading(6, t(context).hello, color: AppColors.white),
                          ],
                        ),
                      ),
                      expandedHeight: 180.0,
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                        background: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(AppSizesUnit.medium16),
                            bottomRight: Radius.circular(AppSizesUnit.medium16),
                          )),
                          clipBehavior: Clip.antiAlias,
                          child: StudentAssets.homeImageXs,
                        ),
                        centerTitle: true,
                      ),
                      backgroundColor: AppColors.primaryBlue,
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        decoration: const BoxDecoration(
                          // background: var(--bg-gradient, linear-gradient(179deg, #F1F5F9 0%, #98D7FA 100%));
                          gradient: LinearGradient(
                            stops: [0, 0.8, 1],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.white,
                              AppColors.white,
                              AppColors.lightBlue6,
                            ],
                          ),
                          image: DecorationImage(
                            image: StudentAssets.noLearningGoalXs,
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(
                            AppSizesUnit.medium16,
                            AppSizesUnit.medium20,
                            AppSizesUnit.medium16,
                            0,
                          ),
                          child: HomeWidget(),
                        ),
                      ),
                    )
                  ],
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Container(
                    decoration: const BoxDecoration(
                      // background: var(--bg-gradient, linear-gradient(179deg, #F1F5F9 0%, #98D7FA 100%));
                      gradient: LinearGradient(
                        stops: [0, 0.8, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.white,
                          AppColors.white,
                          AppColors.lightBlue6,
                        ],
                      ),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(AppSizesUnit.large32),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: StudentAssets.noLearningGoal,
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: AppSizesUnit.large40,
                                      child: AppAssets.logoHorizontalSVG,
                                    ),
                                    AppSizesUnit.sizedBox16,
                                    const Flexible(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: TopMenuWidget(0),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSizesUnit.sizedBox16,
                                const HomeWidget()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration:
                            BoxDecoration(image: DecorationImage(image: StudentAssets.homeImage, fit: BoxFit.cover)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSizesUnit.large48, vertical: AppSizesUnit.large56),
                          width: MediaQuery.of(context).size.width > 480 * 2
                              ? 440
                              : MediaQuery.of(context).size.width / 2 - 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      StudentAssets.avatar,
                                      AppSizesUnit.sizedBox8,
                                      Heading(4, t(context).hello, color: AppColors.white),
                                    ],
                                  ),
                                  const SettingsButton(),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading(5, t(context).shortcuts, color: AppColors.white),
                                  AppSizesUnit.sizedBox16,
                                  const ContinueButton(),
                                  AppSizesUnit.sizedBox16,
                                  LargeBtn(
                                    color: AppColors.orange,
                                    onClick: () => context.go(AppPaths.mockTest.path),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
        ),
      ),
    );
  }
}

class HomeWidget extends ConsumerStatefulWidget {
  const HomeWidget({super.key});

  @override
  ConsumerState<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends ConsumerState<HomeWidget> {
  @override
  void initState() {
    super.initState();
    ref.read(homeNotifierProvider.notifier);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (context.isXsScreen())
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Heading(7, t(context).shortcuts),
            AppSizesUnit.sizedBox12,
            const ContinueButton(),
            AppSizesUnit.sizedBox24,
          ]),
        const AttributesWidget(),
        AppSizesUnit.sizedBox24,
        Consumer(builder: (context, ref, _) {
          final state = ref.watch(homeNotifierProvider);
          return state.when(
              data: (data) => LearningGoalsWidget(data.studentLearningGoalsOption.getOrElse(() => [])),
              error: (error, _) => Text(t(context).error),
              loading: () => const CircularProgressIndicator());
        })
      ],
    );
  }
}

class LearningGoalsWidget extends ConsumerWidget {
  final List<StudentLearningGoal> learningGoals;
  const LearningGoalsWidget(
    this.learningGoals, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - AppSizesUnit.medium16 * 2,
          child: LayoutBuilder(builder: (context, constrains) {
            final direction = constrains.maxWidth > 500 ? Axis.horizontal : Axis.vertical;
            return Flex(
              direction: direction,
              mainAxisAlignment: direction == Axis.vertical ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Heading(5, t(context).recentGoal)],
                ),
                AppSizesUnit.sizedBox12,
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => context.go(AppPaths.mockTest.path),
                      child: Row(
                        children: [
                          const Icon(AppIcons.add, size: AppSizesUnit.medium24),
                          AppSizesUnit.sizedBox8,
                          Text(
                            t(context).createNewGoal,
                            style: const TextStyle(overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                    AppSizesUnit.sizedBox16,
                    if (learningGoals.isEmpty) const LongArrowWidget(height: 82),
                  ],
                ),
              ],
            );
          }),
        ),
        AppSizesUnit.sizedBox16,
        if (learningGoals.isNotEmpty)
          LayoutBuilder(builder: (context, constrains) {
            final col = constrains.maxWidth > 435 * 2 ? 2 : 1;
            return GridView.count(
                crossAxisCount: col,
                shrinkWrap: true,
                childAspectRatio: constrains.maxWidth / col / AppSizesUnit.large80,
                mainAxisSpacing: AppSizesUnit.medium24,
                crossAxisSpacing: AppSizesUnit.medium24,
                children: List.generate(
                    learningGoals.length,
                    (index) => StudentLearningGoalItem(learningGoals[index], () async {
                          await ref.read(homeNotifierProvider.notifier).selectStudentLearningGoal(learningGoals[index]);
                          if (context.mounted) {
                            context.go(AppPaths.learningPath.path);
                          }
                        })));
          }),
        if (learningGoals.isEmpty) ...[
          SizedBox(
            width: context.isLargerThanLgScreen() ? 435 : null,
            child: Transform.translate(
              offset: Offset(0, context.isLargerThanLgScreen() ? -50 : 0),
              child: Column(
                children: [
                  Heading(
                    5,
                    t(context).noGoal,
                    color: AppColors.orange,
                  ),
                  AppSizesUnit.sizedBox8,
                  Text(
                    t(context).kyonsNeedToKnow,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: AppSizesUnit.medium16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
        AppSizesUnit.sizedBox80,
      ],
    );
  }
}

class StudentLearningGoalItem extends StatelessWidget {
  final StudentLearningGoal learningGoal;
  final VoidCallback? onClick;
  const StudentLearningGoalItem(this.learningGoal, this.onClick, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: AppSizesUnit.large80,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
            // box-shadow: 0px 9px 19px 1px rgba(49, 93, 147, 0.10);
            boxShadow: [
              BoxShadow(
                color: AppColors.secondaryBlue.withAlpha(255 ~/ 10),
                offset: const Offset(0, 9),
                blurRadius: 19,
                spreadRadius: 1,
              )
            ],
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizesUnit.medium16,
            vertical: AppSizesUnit.medium12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StudentAssets.mathImage,
              AppSizesUnit.sizedBox16,
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading(6, learningGoal.name, maxLines: 1),
                      AppSizesUnit.sizedBox6,
                      Text(learningGoal.programName, overflow: TextOverflow.ellipsis),
                    ]),
              ),
              AppSizesUnit.sizedBox16,
              CircleProgressBar(
                backgroundColor: AppColors.blueGray300,
                foregroundColor: AppColors.orange,
                value: learningGoal.completePercentage / 100,
                strokeWidth: AppSizesUnit.small8,
                child: Center(child: Heading(7, '${learningGoal.completePercentage}%')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LongArrowWidget extends StatelessWidget {
  final double height;
  const LongArrowWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: CustomPaint(painter: LongArrowPainter(height, isCurved: context.isLargerThanLgScreen())));
  }
}

class LongArrowPainter extends CustomPainter {
  final bool isCurved;
  final double height;

  LongArrowPainter(this.height, {this.isCurved = false});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    double arrow = 12;
    if (isCurved) {
      canvas.drawArc(Offset(-height * 2, -height) & Size(height * 2, height * 2), 0, pi / 2, false, paint);
    } else {
      canvas.drawLine(const Offset(0, 0), Offset(0, height), paint);
    }
    canvas.drawLine(Offset(0 - arrow, arrow), const Offset(0, 0), paint);
    canvas.drawLine(Offset(0 + arrow, arrow), const Offset(0, 0), paint);

    // final space = (dashSpace + dashWidth);
    // startY += space;
    // max -= space;
    // }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () => context.go(AppPaths.userInfo.path),
          child: Text(t(context).userInfo),
        ),
        PopupMenuItem(
          onTap: () => context.go(AppPaths.account.path),
          child: Text(t(context).yourAccount),
        ),
        PopupMenuItem(
          onTap: () => context.go(AppPaths.account.path),
          child: Text(t(context).userManual),
        ),
        PopupMenuItem(
          onTap: () => context.go(AppPaths.signOut.path),
          child: Text(t(context).signOut),
        ),
      ],
      icon: Icon(
        AppIcons.settings,
        color: AppColors.white,
        size: context.isXsScreen() ? AppSizesUnit.medium24 : AppSizesUnit.large36,
      ),
    );
  }
}

class ContinueButton extends ConsumerWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeNotifierProvider);
    return LargeBtn(
      onClick: () async {
        if (homeState.hasValue) {
          await ref
              .read(homeNotifierProvider.notifier)
              .selectStudentLearningGoal(homeState.value!.studentLearningGoalsOption.getOrElse(() => [])[0]);
          if (context.mounted) context.go(AppPaths.learningPath.path);
        }
      },
      disabled: homeState.value == null
          ? true
          : homeState.value!.studentLearningGoalsOption.isNone()
              ? true
              : homeState.value!.studentLearningGoalsOption.getOrElse(() => []).isEmpty
                  ? true
                  : false,
    );
  }
}
