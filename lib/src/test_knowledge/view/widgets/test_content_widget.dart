import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_package/shared_package.dart';

import '../../../test_knowledge/data/test_knowledge.dart';
import '../../../test_knowledge/view/widgets/answer_result_widget.dart';
import '../../app/test_provider.dart';

class TestContentWidget extends HookWidget {
  final String title;
  final TestContent testContent;
  final int currentQuestionIndex;
  final Function nextCallback;
  final Map<String, String> answersResult;
  final Function answerSelectedCallback;
  final Function submitCallback;
  final Function reportCallback;
  const TestContentWidget({
    Key? key,
    Function? previousCallback,
    required this.reportCallback,
    required this.testContent,
    required this.currentQuestionIndex,
    required this.nextCallback,
    required this.answersResult,
    required this.answerSelectedCallback,
    required this.submitCallback,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testLength = testContent.questions.length;
    final viewType = useState(QuestionViewType.question);
    if (testLength == 0) return const Center(child: Text('No data'));
    final Question question = testContent.questions[currentQuestionIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Heading(8, title),
        //   ],
        // ),
        // AppSizesUnit.sizedBox8,
        AppSizesUnit.sizedBox24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionWidget(
              question,
              index: currentQuestionIndex,
              answerValue: answersResult[question.id.toString()],
              answerSelectedCallback: answerSelectedCallback,
              viewType: viewType.value,
            ),
          ],
        ),
        AppSizesUnit.sizedBox24,
        // Flexible(child: Container()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => reportCallback(),
              child: const Icon(AppIcons.error),
            ).largeIcon(context),
            AppSizesUnit.sizedBox8,
            viewType.value == QuestionViewType.question
                ? ElevatedButton(
                    onPressed: answersResult.entries.length - 1 == currentQuestionIndex
                        ? () => viewType.value = QuestionViewType.result
                        : null,
                    child: const Icon(AppIcons.submit),
                  ).largeIcon(context)
                : ElevatedButton(
                    onPressed: answersResult.entries.length == testLength
                        ? () => submitCallback()
                        : () {
                            nextCallback();
                            viewType.value = QuestionViewType.question;
                          },
                    child: const Icon(AppIcons.arrowRight),
                  ).largeIcon(context),
            // if (answersResult.entries.length == testLength) ...[
            //   AppSizesUnit.sizedBox24,
            //   ElevatedButton(
            //     onPressed: answersResult.entries.length == testLength ? () => submitCallback() : null,
            //     child: const Icon(AppIcons.Submit),
            //   ),
            // ],
          ],
        ),
      ],
    );
  }
}

class QuestionWidget extends HookWidget {
  final Question question;
  final int? index;
  final String? answerValue;
  final Function answerSelectedCallback;
  final QuestionViewType viewType;

  const QuestionWidget(this.question,
      {Key? key, required this.viewType, this.index, this.answerValue, required this.answerSelectedCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 333,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium16),
          decoration: const BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(AppSizesUnit.medium16))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//               const Text(
//                   '''Reprehenderit amet mollit duis exercitation velit magna anim. Esse commodo elit ut ad quis irure id est reprehenderit. Nisi incididunt aliquip proident do. Excepteur adipisicing adipisicing et minim fugiat. Mollit consequat do ullamco sint duis.

// Cillum reprehenderit eu pariatur sint irure magna id labore anim mollit irure cupidatat. Sit anim ut est nisi. Amet ex aliquip officia cupidatat amet nulla irure minim proident occaecat adipisicing cillum Lorem do.

// Commodo aute pariatur Lorem consequat. Incididunt nulla commodo aute fugiat commodo labore pariatur veniam tempor dolor ad elit. Laboris officia nulla ut sit sit laboris nisi nisi velit.

// Non deserunt incididunt incididunt laboris. Ullamco tempor aute et dolore in proident reprehenderit tempor Lorem amet magna deserunt. Ex quis id tempor ipsum aliquip enim voluptate laboris aute.

// Magna sint nulla velit tempor sit elit occaecat ad ut est ad. Labore duis anim mollit pariatur irure veniam minim qui qui enim minim do sint. Mollit non voluptate consequat tempor proident cupidatat voluptate velit. Veniam velit tempor consectetur aute esse dolor dolor reprehenderit ea sit mollit cupidatat aliqua id. Quis minim esse incididunt cillum qui exercitation ad.'''),
              AppSizesUnit.sizedBox8,
              AppHtml(data: question.content),
              AppSizesUnit.sizedBox8,
              ...question.answers.map((answer) => viewType == QuestionViewType.question
                  ? AnswerWidget(
                      answer,
                      checked: answerValue != null ? answerValue == answer.id : false,
                      answerSelectedCallback: answerSelectedCallback,
                    )
                  : answer.isCorrect
                      ? AnswerResultWidget(
                          answer: answer,
                          isSelected: answerValue != null ? answerValue == answer.id : false,
                        )
                      : (answerValue != null && answerValue == answer.id)
                          ? AnswerResultWidget(
                              answer: answer,
                              isSelected: answerValue != null ? answerValue == answer.id : false,
                            )
                          : Container()),
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
                          color: AppColors.lightBlue1,
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
