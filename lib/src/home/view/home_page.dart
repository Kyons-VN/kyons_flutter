import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart' hide Svg;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../../core/view/assets/student_assets.dart';
import '../../core/view/widgets/large_blue_btn.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../navigation/domain/app_paths.dart';
import '../../navigation/view/app_drawer.dart';
import '../app/home_provider.dart';

class HomePage extends StatelessWidget {
  final bool isShowHomeOptions;
  const HomePage({Key? key, this.isShowHomeOptions = false}) : super(key: key);

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
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      print('object');
                    },
                    icon: const Icon(
                      AppIcons.settings,
                      color: AppColors.white,
                    ),
                  ),
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
                  titlePadding: const EdgeInsets.only(left: 16, top: 16),
                  // background: SvgPicture.asset(
                  //   'assets/images/home.svg',
                  //   fit: BoxFit.fill,
                  // ),
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
                pinned: true,
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
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
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => context.go(AppPaths.mockTestLearningGoal.path),
        //   child: const Icon(
        //     AppIcons.Add,
        //     color: AppColors.white,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeNotifierProvider.notifier);
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Heading(7, t(context).shortcuts),
          AppSizesUnit.sizedBox12,
          BlueLargeBtn(
            onClick: () {
              context.go(AppPaths.learningPath.path);
            },
          ),
          AppSizesUnit.sizedBox24,
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
            child: Column(
              children: [
                SvgPicture.asset('assets/images/Spider chart.svg'),
                SizedBox(
                  width: 223,
                  child: Column(
                    children: [
                      AppSizesUnit.sizedBox16,
                      const Divider(),
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
                              child: SvgPicture.asset('assets/images/Speed.svg'),
                            ),
                          ),
                        ],
                      ),
                      AppSizesUnit.sizedBox24,
                      Heading(6, t(context).secrectFeature, color: AppColors.white, textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
        ProgramsWidget(),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(-30, 0);
    const p2 = Offset(30, 0);
    canvas.drawLine(
        p1,
        p2,
        Paint()
          ..color = AppColors.orange
          ..strokeWidth = 6.0
          ..strokeCap = StrokeCap.round);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ProgramsWidget extends HookConsumerWidget {
  const ProgramsWidget({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final homeState = ref.watch(homeNotifierProvider);
    final homeController = ref.watch(homeNotifierProvider.notifier);
    final scrollController = useScrollController();
    ref.listen<AsyncValue<HomeState>>(homeNotifierProvider, (previousCount, newCount) {
      if (newCount.value!.selectedLearningGoalOption.isSome()) {
        context.go(AppPaths.learningPath.path);
      }
    });
    return homeState.when(
        skipError: true,
        data: (state) {
          final programs = state.studentProgramsOption.fold(() => [], (either) => either.getOrElse((l) => []));
          // final programs = [
          //   Program(subjectId: '1', id: '1', name: 'English 1'),
          //   Program(subjectId: '1', id: '2', name: 'English 2'),
          //   Program(subjectId: '1', id: '3', name: 'English 3'),
          //   Program(subjectId: '1', id: '4', name: 'English 4'),
          //   Program(subjectId: '1', id: '5', name: 'English 5'),
          //   Program(subjectId: '1', id: '6', name: 'English 6'),
          //   Program(subjectId: '1', id: '7', name: 'English 7'),
          //   Program(subjectId: '1', id: '8', name: 'English 8'),
          // ];
          return Column(
            children: [
              if (programs.isEmpty) ...[
                AppSizesUnit.sizedBox24,
                Text(
                  t(context).chooseSubjectAndProgram,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.heading6,
                ),
                AppSizesUnit.sizedBox24,
                LongArrowWidget(height: MediaQuery.of(context).size.height - 532),
                AppSizesUnit.sizedBox48,
              ] else
                Flexible(
                    // width: double.infinity,
                    // height: 100,
                    child: state.display == ProgramsDisplay.grid
                        ? GridView.count(
                            crossAxisCount: 2,
                            controller: scrollController,
                            crossAxisSpacing: AppSizesUnit.medium24,
                            mainAxisSpacing: AppSizesUnit.medium24,
                            children: [
                              for (var i = 0; i < programs.length; i++) ProgramWidget(program: programs[i], index: i),
                            ],
                          )
                        : Carousel(
                            items: [
                              for (var i = 0; i < programs.length; i++)
                                SizedBox.square(
                                    dimension: MediaQuery.of(context).size.width - 105,
                                    child: ProgramWidget(program: programs[i], index: i)),
                            ],
                            initialIndex: state.carouselIndex,
                            defaultPreviousIndex: state.previousIndex,
                            onIndexChanged: homeController.setCarouselIndex,
                            // gap: 100,
                            // placeholderScale: 0.5,
                            // duration: const Duration(milliseconds: 1000),
                            // curve: Curves.linear,
                          )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      state.display == ProgramsDisplay.carousel ? AppIcons.thumbnail : AppIcons.carousel,
                      color: programs.isEmpty || programs.length == 1 ? AppColors.blueGray400 : AppColors.orange,
                    ),
                    onPressed: programs.isEmpty || programs.length == 1 ? null : () => homeController.toggleDisplay(),
                  ),
                ],
              ),
            ],
          );
        },
        error: (_, __) {
          return Container();
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        });
  }
}

class ProgramWidget extends HookConsumerWidget {
  final Program program;
  final int index;
  const ProgramWidget({Key? key, required this.program, required this.index}) : super(key: key);

  @override
  Widget build(context, ref) {
    final homeNotifier = ref.read(homeNotifierProvider.notifier);
    final onHovered = useState<bool>(false);
    final mounted = useIsMounted();
    return GestureDetector(
      onTap: () async {
        await homeNotifier.selectProgram(program);
        if (!mounted()) return;
        // ignore: use_build_context_synchronously
        context.go(AppPaths.learningPath.path);
      },
      child: FocusableActionDetector(
        onShowHoverHighlight: (value) {
          onHovered.value = !onHovered.value;
        },
        mouseCursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            boxShadow: onHovered.value
                ? const [
                    BoxShadow(
                      color: AppColors.shadow,
                      spreadRadius: 0,
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      blurStyle: BlurStyle.normal,
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizesUnit.medium16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Heading(
                  6,
                  program.name,
                  color: AppColors.white,
                ),
                AppSizesUnit.sizedBox8,
                Text(
                  t(context).nationalProgram,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.lightBlue3),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
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
    return SizedBox(height: height, child: CustomPaint(painter: LongArrowPainter(height)));
  }
}

class LongArrowPainter extends CustomPainter {
  final double height;

  LongArrowPainter(this.height);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.blueGray300
      ..strokeWidth = 3;
    double arrow = 12;
    canvas.drawLine(const Offset(0, 0), Offset(0, height), paint);
    canvas.drawLine(Offset(0 - arrow, height - arrow), Offset(0, height), paint);
    canvas.drawLine(Offset(0 + arrow, height - arrow), Offset(0, height), paint);

    // final space = (dashSpace + dashWidth);
    // startY += space;
    // max -= space;
    // }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
