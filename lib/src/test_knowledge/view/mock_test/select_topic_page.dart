import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../app/mock_test/select_topic_controller.dart';

class SelectTopicPage extends ConsumerWidget {
  final String lgId;
  const SelectTopicPage({super.key, required this.lgId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectTopicControllerProvider);
    final controller = ref.read(selectTopicControllerProvider.notifier);
    ref.listen<SelectTopicState>(selectTopicControllerProvider, (previous, next) {
      if (next.clientError.isSome()) {
        Flushbar()
            .error(
              t(context).error,
            )
            .show(context);
      } else if (next.newLearningGoal.isSome()) {
        context.go(AppPaths.mockTestTest.pathId(next.newLearningGoal.getOrElse(() => LearningGoal.empty()).id));
      }
    });
    if (state.apiError.isSome()) {
      return state.apiError.getOrElse(() => const ApiFailure.serverError()).maybeWhen(
          orElse: () => const Center(
                child: Text('Server error'),
              ),
          ranOutMockTest: () => Scaffold(
                body: SafeArea(
                  child: AppDialog(
                    title: Heading(7, t(context).ranOutMockTest),
                    body: Text(t(context).ranOutMockTestDesc),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            // Package
                          },
                          child: Text(t(context).buyPackage)),
                      OutlinedButton(
                          onPressed: () => context.go(AppPaths.home.path), child: Text(t(context).notChangeTarget)),
                    ],
                  ),
                ),
              ));
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: context.isXsScreen()
              ? Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSizesUnit.medium24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [AppIcons.closeIcon(() => context.go(AppPaths.mockTestLearningGoal.path))],
                      ),
                      AppSizesUnit.sizedBox8,
                      Text(t(context).selectContent, style: Theme.of(context).textTheme.heading4),
                      AppSizesUnit.sizedBox16,
                      if (state.topicsOption.isSome()) ...[
                        Text(
                          t(context).selectContentDesc(
                              controller.selectedLearningGoal.minTopics, controller.selectedLearningGoal.maxTopics),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: state.isValid ? AppColors.primaryBlue : AppColors.red),
                        ),
                        AppSizesUnit.sizedBox16,
                        const Expanded(child: TopicPickerWrapper()),
                      ],
                    ],
                  ),
                )
              : Center(
                  child: Container(
                    color: AppColors.white,
                    width: 434,
                    child: const TopicPickerWrapper(),
                  ),
                ),
        ));
  }
}

class TopicPickerWrapper extends ConsumerWidget {
  const TopicPickerWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectTopicControllerProvider);
    final controller = ref.read(selectTopicControllerProvider.notifier);
    final items = state.topicsOption.fold(
      () => [const SizedBox.shrink()],
      (topics) => topics
          .mapWithIndex((topic, index) => TopicPickerItem(
                topic: topic,
                onChanged: (value) => controller.selectTopicChanged(index, value),
              ))
          .toList(),
    );
    // return SingleChildScrollView(
    //   child: Column(
    //     children: state.topicsOption.fold(
    //       () => [const SizedBox.shrink()],
    //       (topics) => topics
    //           .mapWithIndex((topic, index) => TopicPickerItem(
    //                 topic: topic,
    //                 onChanged: (value) => controller.selectTopicChanged(index, value),
    //               ))
    //           .toList(),
    //     ),
    //   ),
    // );
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (builder, index) {
              return items[index];
            },
            separatorBuilder: (_, __) => AppSizesUnit.sizedBox8,
            itemCount: items.length,
          ),
        ),
        AppSizesUnit.sizedBox16,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: state.isValid ? () => controller.submitBtnPressed() : null, child: Text(t(context).doTest)),
        ),
      ],
    );
  }
}

class TopicPickerItem extends StatelessWidget {
  final TopicSelection topic;
  final void Function(bool) onChanged;
  const TopicPickerItem({super.key, required this.topic, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    // return Text(topic.name);
    return CheckboxFormField(
      label: Text(topic.name),
      onChanged: onChanged,
      contentPadding: const EdgeInsets.all(AppSizesUnit.small8),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.blueGray300),
        borderRadius: BorderRadius.circular(AppSizesUnit.small5),
      ),
      initialValue: topic.isSelected,
    );
  }
}
