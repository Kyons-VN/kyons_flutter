import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:shared_package/shared_package.dart';

class TestResultWidget extends StatelessWidget {
  final TestResult testResult;
  final LessonGroup lessonGroup;
  final List<Widget>? actions;
  final TestContent testContent;
  const TestResultWidget({
    Key? key,
    required this.testResult,
    this.actions,
    required this.lessonGroup,
    required this.testContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                    Heading(8, t(context).your_score),
                    SizedBox.square(
                      dimension: 90,
                      child: Stack(children: [
                        SizedBox.square(
                          dimension: 90,
                          child: CircularProgressIndicator(
                            strokeWidth: 10,
                            value: testResult.score / 10,
                            backgroundColor: AppColors.blueGray100,
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Heading(3, testResult.score.round().toString()),
                              const Heading(6, '10'),
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                ),
                AppSizesUnit.sizedBox24,
                Heading(8, t(context).general_knowledge),
                AppSizesUnit.sizedBox8,
                ...testResult.result.categories
                    .map(
                      (catId, score) => MapEntry(
                        catId,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(lessonGroup.lessonInfos
                                .firstWhere((lessonInfo) => lessonInfo.category.id == catId)
                                .category
                                .name),
                            Text('${(score * 100 / testResult.result.maxScore).round()}%')
                          ],
                        ),
                      ),
                    )
                    .values
                    .toList(),
                AppSizesUnit.sizedBox24,
                ...actions ?? [],
              ],
            ),
          ),
          AppSizesUnit.sizedBox24,
          if (testResult.result.score < testResult.result.maxScore)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSizesUnit.medium16),
              decoration:
                  BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(8, t(context).knowledge_should_review),
                  if (testResult.result.topicWrongQuestions.values.isNotEmpty)
                    ...testResult.result.topicWrongQuestions
                        .map(
                          (topicId, questionIds) => MapEntry(
                            topicId,
                            TopicResult(
                              lessonInfo:
                                  lessonGroup.lessonInfos.firstWhere((lessonInfo) => lessonInfo.topic.id == topicId),
                              questions: testContent.questions.where((question) => questionIds.contains(question.id)),
                              testResult: testResult,
                              indexOf: testContent.questions.map((q) => q.id).toList().indexOf,
                            ),
                          ),
                        )
                        .values
                        .toList()
                ],
              ),
            ),
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
                          7, t(context).thing_number(t(context).question_number, indexOf(question.id) + 1).toString()),
                      AppSizesUnit.sizedBox8,
                      AppHtml(data: question.content),
                      AppSizesUnit.sizedBox16,
                      ...question.answers
                          .where((answer) =>
                              testResult.review.selectedAnswers.contains(answer.id) ||
                              testResult.review.rightAnswers.contains(answer.id))
                          .map((answer) => Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(AppSizesUnit.small8),
                                    decoration: BoxDecoration(
                                        color: testResult.review.rightAnswers.contains(answer.id)
                                            ? AppColors.emerald3
                                            : AppColors.red1,
                                        borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: AppSizesUnit.small8),
                                          child: Icon(
                                            testResult.review.rightAnswers.contains(answer.id)
                                                ? AppIcons.check
                                                : AppIcons.error,
                                            size: 16,
                                            color: testResult.review.rightAnswers.contains(answer.id)
                                                ? AppColors.darkEmerald
                                                : AppColors.red,
                                          ),
                                        ),
                                        AppSizesUnit.sizedBox8,
                                        Flexible(
                                            child: Container(
                                                margin: const EdgeInsets.only(bottom: AppSizesUnit.small8),
                                                child: AppHtml(data: answer.content))),
                                      ],
                                    ),
                                  ),
                                  AppSizesUnit.sizedBox16,
                                ],
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
        if (index != null) Heading(7, t(context).thing_number(t(context).question_number, index! + 1)),
        AppHtml(
          data: question.content,
        ),
        ...question.answers.map((answer) => Text(answer.content)),
      ],
    );
  }
}
