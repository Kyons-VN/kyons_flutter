import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:shared_package/shared_package.dart';

import 'answer_result_widget.dart';

class TestResultWidget extends HookWidget {
  final TestResult testResult;
  final LessonGroup lessonGroup;
  final List<Widget>? actions;
  final TestContent testContent;
  final LearningGoal learningGoal;
  const TestResultWidget({
    Key? key,
    required this.testResult,
    this.actions,
    required this.lessonGroup,
    required this.testContent,
    required this.learningGoal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOpened = useState(false);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSizesUnit.medium16),
            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading(8, t(context).yourScore),
                    Heading(2, '${testResult.result.score}/${testResult.result.maxScore}'),
                  ],
                ),
              ],
            ),
          ),
          AppSizesUnit.sizedBox8,
          Container(
            padding: const EdgeInsets.all(AppSizesUnit.medium16),
            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading(8, t(context).compareWithTarget),
                        Heading(8, learningGoal.name),
                      ],
                    ),
                    Expanded(child: Container()),
                    const Heading(6, ''),
                    AppSizesUnit.sizedBox24,
                    AppIcons.iconButton(isOpened.value ? AppIcons.arrowUp : AppIcons.arrowDown, () {
                      isOpened.value = !isOpened.value;
                    }),
                  ],
                ),
                if (isOpened.value) ...[
                  AppSizesUnit.sizedBox24,
                  ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (builder, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(lessonGroup.lessonInfos
                                .firstWhere((lessonInfo) =>
                                    lessonInfo.category.id == testResult.result.categories.keys.toList()[index])
                                .category
                                .name),
                            Text(
                                '${(testResult.result.categories.values.toList()[index] * 100 / testResult.result.maxScore).round()}%')
                          ],
                        );
                      },
                      separatorBuilder: (_, __) => const Divider(indent: 0, height: 8, endIndent: 0),
                      itemCount: testResult.result.categories.length),
                ],
              ],
            ),
          ),
          // if (testResult.result.score < testResult.result.maxScore)
          //   Container(
          //     width: double.infinity,
          //     padding: const EdgeInsets.all(AppSizesUnit.medium16),
          //     decoration:
          //         BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Heading(8, t(context).knowledgeShouldReview),
          //         if (testResult.result.topicWrongQuestions.values.isNotEmpty)
          //           ...testResult.result.topicWrongQuestions
          //               .map(
          //                 (topicId, questionIds) => MapEntry(
          //                   topicId,
          //                   TopicResult(
          //                     lessonInfo:
          //                         lessonGroup.lessonInfos.firstWhere((lessonInfo) => lessonInfo.topic.id == topicId),
          //                     questions: testContent.questions.where((question) => questionIds.contains(question.id)),
          //                     testResult: testResult,
          //                     indexOf: testContent.questions.map((q) => q.id).toList().indexOf,
          //                   ),
          //                 ),
          //               )
          //               .values
          //               .toList()
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }
}

class TopicResult extends HookWidget {
  final LessonInfo lessonInfo;
  final Iterable<Question> questions;
  final TestResult testResult;
  final Function indexOf;
  const TopicResult({
    required this.indexOf,
    required this.questions,
    required this.testResult,
    required this.lessonInfo,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isOpened = useState<bool>(false);
    return Column(
      children: [
        AppSizesUnit.sizedBox8,
        GestureDetector(
          onTap: () {
            isOpened.value = !isOpened.value;
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: AppHtml(
                    data: lessonInfo.topic.name,
                  ),
                ),
                Icon(isOpened.value ? AppIcons.arrowUp : AppIcons.arrowDown),
              ],
            ),
          ),
        ),
        AppSizesUnit.sizedBox8,
        const Divider(endIndent: 0, indent: 0),
        if (isOpened.value) ...[
          ...questions
              .map((question) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSizesUnit.sizedBox16,
                      Heading(
                          7, t(context).thingNumber(t(context).questionNumber, indexOf(question.id) + 1).toString()),
                      AppSizesUnit.sizedBox8,
                      AppHtml(data: question.content),
                      AppSizesUnit.sizedBox16,
                      ...question.answers
                          .where((answer) =>
                              testResult.review.selectedAnswers.contains(answer.id) ||
                              testResult.review.rightAnswers.contains(answer.id))
                          .map((answer) => AnswerResultWidget(
                                answer: answer,
                              ))
                          .toList(),
                    ],
                  ))
              .toList(),
        ],
      ],
    );
  }
}

class QuestionResult extends StatelessWidget {
  final Question question;
  final int? index;
  const QuestionResult({Key? key, required this.question, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (index != null) Heading(7, t(context).thingNumber(t(context).questionNumber, index! + 1)),
        AppHtml(
          data: question.content,
        ),
        ...question.answers.map((answer) => Text(answer.content)),
      ],
    );
  }
}
