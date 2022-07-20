import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/core/view/widgets/app_html.dart';
import 'package:kyons_flutter/src/core/view/widgets/app_progress_indicator.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

class TestContentWidget extends StatelessWidget {
  final String title;
  final TestContent testContent;
  final int currentQuestionIndex;
  final Function previousCallback;
  final Function nextCallback;
  final Map<String, String> answersResult;
  final Function answerSelectedCallback;
  final Function submitCallback;
  const TestContentWidget({
    Key? key,
    required this.testContent,
    required this.currentQuestionIndex,
    required this.nextCallback,
    required this.previousCallback,
    required this.answersResult,
    required this.answerSelectedCallback,
    required this.submitCallback,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testLength = testContent.questions.length;
    final Question question = testContent.questions[currentQuestionIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(8, title),
            Heading(8, '${answersResult.entries.length}/$testLength'),
          ],
        ),
        AppSizesUnit.sizedBox8,
        AppProgressIndicator(value: answersResult.entries.length / testLength),
        AppSizesUnit.sizedBox24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionWidget(
              question,
              index: currentQuestionIndex,
              answerValue: answersResult[question.id.toString()],
              answerSelectedCallback: answerSelectedCallback,
            ),
          ],
        ),
        AppSizesUnit.sizedBox24,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: currentQuestionIndex == 0 ? null : () => previousCallback(),
              child: const Icon(AppIcons.arrowLeft),
            ),
            AppSizesUnit.sizedBox24,
            OutlinedButton(
              onPressed: currentQuestionIndex < testLength - 1 ? () => nextCallback() : null,
              child: const Icon(AppIcons.arrowRight),
            ),
            if (answersResult.entries.length == testLength) ...[
              AppSizesUnit.sizedBox24,
              ElevatedButton(
                onPressed: answersResult.entries.length == testLength ? () => submitCallback() : null,
                child: const Icon(AppIcons.submit),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final Question question;
  final int? index;
  final String? answerValue;
  final Function answerSelectedCallback;

  const QuestionWidget(this.question, {Key? key, this.index, this.answerValue, required this.answerSelectedCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 340,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium16),
          decoration: const BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(AppSizesUnit.medium16))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index != null) Heading(7, t(context).thing_number(t(context).question_number, index! + 1)),
//               const Text(
//                   '''Reprehenderit amet mollit duis exercitation velit magna anim. Esse commodo elit ut ad quis irure id est reprehenderit. Nisi incididunt aliquip proident do. Excepteur adipisicing adipisicing et minim fugiat. Mollit consequat do ullamco sint duis.

// Cillum reprehenderit eu pariatur sint irure magna id labore anim mollit irure cupidatat. Sit anim ut est nisi. Amet ex aliquip officia cupidatat amet nulla irure minim proident occaecat adipisicing cillum Lorem do.

// Commodo aute pariatur Lorem consequat. Incididunt nulla commodo aute fugiat commodo labore pariatur veniam tempor dolor ad elit. Laboris officia nulla ut sit sit laboris nisi nisi velit.

// Non deserunt incididunt incididunt laboris. Ullamco tempor aute et dolore in proident reprehenderit tempor Lorem amet magna deserunt. Ex quis id tempor ipsum aliquip enim voluptate laboris aute.

// Magna sint nulla velit tempor sit elit occaecat ad ut est ad. Labore duis anim mollit pariatur irure veniam minim qui qui enim minim do sint. Mollit non voluptate consequat tempor proident cupidatat voluptate velit. Veniam velit tempor consectetur aute esse dolor dolor reprehenderit ea sit mollit cupidatat aliqua id. Quis minim esse incididunt cillum qui exercitation ad.'''),
              AppSizesUnit.sizedBox8,
              AppHtml(data: question.content),
              AppSizesUnit.sizedBox8,
              ...question.answers.map((answer) => AnswerWidget(
                    answer,
                    checked: answerValue != null ? answerValue == answer.id : false,
                    answerSelectedCallback: answerSelectedCallback,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  final Answer answer;
  final bool checked;
  final Function answerSelectedCallback;
  const AnswerWidget(this.answer, {Key? key, this.checked = false, required this.answerSelectedCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            answerSelectedCallback(answer.id);
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!checked)
                    Container(
                      margin: const EdgeInsets.only(top: AppSizesUnit.small8),
                      width: AppSizesUnit.medium16,
                      height: AppSizesUnit.medium16,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.blueGray400),
                        borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                      ),
                    ),
                  if (checked)
                    Container(
                      margin: const EdgeInsets.only(top: AppSizesUnit.small8),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.blueGray400),
                        borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                      ),
                      child: Center(
                          child: Container(
                        width: AppSizesUnit.small8,
                        height: AppSizesUnit.small8,
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlue,
                          borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                        ),
                      )),
                    ),
                  AppSizesUnit.sizedBox8,
                  Flexible(child: AppHtml(data: answer.content)),
                ],
              ),
            ),
          ),
        ),
        AppSizesUnit.sizedBox8,
      ],
    );
  }
}
