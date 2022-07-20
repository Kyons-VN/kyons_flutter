import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/core/view/widgets/option_picker.dart';
import 'package:kyons_flutter/src/home/app/home_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:kyons_flutter/src/test_knowledge/app/diagnostic_test_provider.dart';

class HomePage extends HookConsumerWidget {
  final bool isShowHomeOptions;
  const HomePage({Key? key, this.isShowHomeOptions = false}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.read(homeNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final homeState = ref.read(homeNotifierProvider);
      if (homeState.studentProgramsOption.isNone()) homeNotifier.init();
      if (isShowHomeOptions) showHomeOptions(context, homeNotifier);
    });
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const MainAppBar(),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  AppSizesUnit.large48 -
                  AppSizesUnit.medium24 -
                  const MainAppBar().preferredSize.height,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSizesUnit.medium24,
                  AppSizesUnit.large36,
                  AppSizesUnit.medium24,
                  AppSizesUnit.large48,
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Expanded(child: ProgramsWidget()),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: ElevatedButton(
                              onPressed: () {
                                showHomeOptions(context, homeNotifier);
                              },
                              child: const Icon(AppIcons.add),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showHomeOptions(BuildContext context, HomeNotifier homeNotifier) {
    homeNotifier.initialSelection();
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: AppSizesUnit.medium24 - 6),
                    Center(
                      child: CustomPaint(
                        painter: LinePainter(),
                      ),
                    ),
                    AppSizesUnit.sizedBox48,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: HomeOptions(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomeOptions extends HookConsumerWidget {
  const HomeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeNotifierProvider);
    final homeNotifier = ref.read(homeNotifierProvider.notifier);
    final diagnosticTestNotifier = ref.read(diagnosticTestNotifierProvider.notifier);
    if (homeState.isContinue) {
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              t(context).choose_subject_and_program_headline,
              style: Theme.of(context).textTheme.heading4.copyWith(color: AppColors.white),
            ),
          ),
          AppSizesUnit.sizedBox48,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                context.go(AppPaths.diagnosticTest.path);
                // diagnosticTestNotifier.init();
              },
              child: Text(t(context).do_diagnostictest_btn),
            ),
          ),
          AppSizesUnit.sizedBox8,
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
                homeNotifier.defaultLearningPath();
              },
              child: Text(t(context).do_diagnostictest_cancel),
            ),
          ),
        ],
      );
    }
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            t(context).choose_subject_and_program_headline,
            style: Theme.of(context).textTheme.heading4.copyWith(color: AppColors.white),
          ),
        ),
        AppSizesUnit.sizedBox48,
        CupertinoPickerOptions<Subject>(
          options: homeState.subjectsOption.getOrElse(() => right([])).getOrElse((l) => []).toList(),
          onPicked: homeNotifier.setSelectedSubject,
          selectedOption: homeState.selectedSubjectOption.getOrElse(() => Subject.empty()),
        ),
        AppSizesUnit.sizedBox16,
        CupertinoPickerOptions<Program>(
          options: homeState.programsOption.getOrElse(() => []),
          onPicked: homeNotifier.setSelectedProgram,
          selectedOption: homeState.selectedProgramOption.getOrElse(() => Program(id: '', name: '', subjectId: '')),
        ),
        AppSizesUnit.sizedBox24,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: homeNotifier.start,
            child: Text(t(context).start),
          ),
        ),
        AppSizesUnit.sizedBox8,
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t(context).back_to_home),
          ),
        ),
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
    final programs = homeState.studentProgramsOption.getOrElse(() => right([])).getRight().getOrElse(() => []);
    final scrollController = useScrollController();

    // return Column(
    //   children: [
    //     AppAssets.chooseSubjectSVG,
    //     AppSizesUnit.sizedBox24,
    //     Text(
    //       t(context).choose_subject_and_program,
    //       textAlign: TextAlign.center,
    //       style: Theme.of(context).textTheme.heading6,
    //     ),
    //   ],
    // );
    return programs.isNotEmpty
        ? GridView.count(
            crossAxisCount: 2,
            controller: scrollController,
            children: [
              for (var i = 0; i < programs.length; i++) ProgramWidget(program: programs[i], index: i),
            ],
          )
        : Column(
            children: [
              AppAssets.chooseSubjectSVG,
              AppSizesUnit.sizedBox24,
              Text(
                t(context).choose_subject_and_program,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.heading6,
              ),
            ],
          );
  }
}

class ProgramWidget extends StatefulWidget {
  final Program program;
  final int index;
  const ProgramWidget({Key? key, required this.program, required this.index}) : super(key: key);

  @override
  State<ProgramWidget> createState() => _ProgramWidgetState();
}

class _ProgramWidgetState extends State<ProgramWidget> {
  bool _onHovered = false;

  void onHover(bool hover) {
    setState(() {
      _onHovered = !_onHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppPaths.learningPath.path);
      },
      child: FocusableActionDetector(
        mouseCursor: SystemMouseCursors.click,
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            boxShadow: _onHovered
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Heading(
                6,
                t(context).english,
                color: AppColors.white,
              ),
              AppSizesUnit.sizedBox8,
              Text(
                'Chương trình quốc gia',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.lightBlue3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
