import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/home/view/home_page.dart';
import 'package:kyons_flutter/src/knowledge/app/lesson_provider.dart';
import 'package:kyons_flutter/src/tutor/app/tutor_provider.dart';
import 'package:kyons_flutter/src/tutor/domain/session.dart';
import 'package:url_launcher/url_launcher.dart';

void showCallTutor(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SafeArea(
        child: Wrap(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: Padding(
                padding: const EdgeInsets.all(AppSizesUnit.medium24),
                child: HookConsumer(builder: (context, ref, child) {
                  final tutorNotifier = ref.read(tutorNotifierProvider.notifier);
                  final tutorState = ref.watch(tutorNotifierProvider);
                  final lessonStudyState = ref.read(lessonStudyNotifierProvider);
                  final lessonStudyNotifier = ref.read(lessonStudyNotifierProvider.notifier);
                  ref.listen<TutorState>(tutorNotifierProvider, (pre, next) {
                    if (next.loading && next.sessionId.isSome()) {
                      tutorNotifier.checkSessionStatus(next.sessionId.getOrElse(() => ''));
                    }
                  });
                  if (tutorState.hasError) {
                    return Center(
                      child: Heading(
                        1,
                        t(context).error,
                        color: AppColors.white,
                      ),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: AppSizesUnit.medium24 - 6),
                      Center(
                        child: CustomPaint(
                          painter: LinePainter(),
                        ),
                      ),
                      AppSizesUnit.sizedBox48,
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox.square(
                              dimension: 254,
                              child: Center(
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 500),
                                  child: tutorState.loading
                                      ? SizedBox.square(
                                          dimension: 188,
                                          child: Stack(children: [
                                            Center(child: AppAssets.tutorStatusSVG),
                                            const SizedBox.square(
                                              dimension: 188,
                                              child: CircularProgressIndicator(
                                                color: AppColors.orange,
                                              ),
                                            ),
                                          ]))
                                      : tutorState.sessionStatus.isNone()
                                          ? AppAssets.tutorSVG
                                          : SizedBox.square(
                                              dimension: 188,
                                              child: Stack(children: [
                                                Center(child: AppAssets.tutorStatusSVG),
                                                const SizedBox.square(
                                                  dimension: 188,
                                                  child: CircularProgressIndicator(
                                                    color: AppColors.orange,
                                                    value: 1,
                                                  ),
                                                ),
                                              ])),
                                ),
                              ),
                            ),
                            AppSizesUnit.sizedBox16,
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              child: Text(
                                textAlign: TextAlign.center,
                                tutorState.loading
                                    ? t(context).connecting_tutor
                                    : tutorState.sessionStatus.isNone()
                                        ? t(context).call_tutor
                                        : t(context).tutor_ready,
                                style: const TextStyle(color: AppColors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      AppSizesUnit.sizedBox48,
                      if (!tutorState.loading && tutorState.sessionStatus.isNone()) ...[
                        ElevatedButton(
                            onPressed: () {
                              tutorNotifier.requestTutor(lessonStudyNotifier
                                  .getSelectedLesson(lessonStudyState.selectedLessonIndex)
                                  .learningPointDifficultyId);
                            },
                            child: Text(t(context).ok)),
                        AppSizesUnit.sizedBox8,
                        OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(t(context).cancel)),
                      ],
                      if (tutorState.sessionStatus.isSome())
                        ElevatedButton(
                            onPressed: () {
                              final Uri uri = Uri.parse(
                                  tutorState.sessionStatus.getOrElse(() => TutorSessionStatus.empty()).meetUrl!);
                              launchUrl(uri);
                            },
                            child: Text(t(context).meet_tutor)),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      );
    },
  );
}

class TutorWaiting extends StatelessWidget {
  const TutorWaiting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
