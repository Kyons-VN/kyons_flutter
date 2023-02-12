import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/app/new_lesson_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:shared_package/shared_package.dart';

class NewLessonPage extends ConsumerWidget {
  const NewLessonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newLessonNotifier = ref.read(newLessonNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final newLessonState = ref.read(newLessonNotifierProvider);
      if (!newLessonState.loading) newLessonNotifier.init();
    });
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            appBar: const MainAppBar(backPath: AppPaths.learningPath),
            endDrawer: const AppDrawer(),
            body: SizedBox.expand(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppSizesUnit.medium24, top: AppSizesUnit.medium24, right: AppSizesUnit.medium24),
                    child: RichText(
                        strutStyle: const StrutStyle(),
                        text: TextSpan(
                            text: t(context).press,
                            style: const TextStyle(color: AppColors.primaryBlue),
                            children: [
                              const TextSpan(text: '+', style: TextStyle(color: AppColors.orange)),
                              TextSpan(text: t(context).to_add_knowledge)
                            ])),
                  ),
                  AppSizesUnit.sizedBox24,
                  const Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      clipBehavior: Clip.hardEdge,
                      padding: EdgeInsets.symmetric(horizontal: AppSizesUnit.medium24),
                      child: LearningPointList(),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryBlue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizesUnit.small8),
                            topRight: Radius.circular(AppSizesUnit.small8))),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizesUnit.medium24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          HookConsumer(builder: (context, ref, child) {
                            final newLessonState = ref.watch(newLessonNotifierProvider);
                            ref.listen<NewLessonState>(newLessonNotifierProvider, (previous, next) {
                              if (previous!.submitting && !next.submitting && !next.hasError) {
                                context.go(AppPaths.learningPath.path);
                              }
                            });
                            return Column(
                              children: [
                                ElevatedButton(
                                  onPressed: newLessonState.selectedIds.isEmpty
                                      ? null
                                      : () {
                                          newLessonNotifier.submit();
                                        },
                                  child: Text(
                                    t(context).create_lesson,
                                    // style: Theme.of(context).textTheme.button,
                                  ),
                                ),
                                Text(
                                  t(context).selected_knowledge_count(newLessonState.selectedIds.length),
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white),
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearningPointList extends ConsumerWidget {
  const LearningPointList({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final newLessonNotifier = ref.read(newLessonNotifierProvider.notifier);
    final newLessonState = ref.watch(newLessonNotifierProvider);
    if (newLessonState.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (newLessonState.learningPoints.isSome()) {
      final learningPointsList = newLessonState.learningPoints.getOrElse(() => []);
      return _LearningPointList(
        learningPointsList,
        selectCallback: newLessonNotifier.select,
        deselectCallback: newLessonNotifier.deselect,
        selectedId: newLessonState.selectedIds.isNotEmpty ? newLessonState.selectedIds.first : '',
      );
    }
    if (newLessonState.hasError) {
      return const Center(child: Text('Error'));
    }
    return Container();
  }
}

class _LearningPointList extends StatelessWidget {
  final String selectedId;
  final List<LearningPoint> learningPointsList;
  final Function(LearningPoint learningPoint) selectCallback;
  final Function(LearningPoint learningPoint) deselectCallback;
  const _LearningPointList(this.learningPointsList,
      {required this.selectedId, Key? key, required this.selectCallback, required this.deselectCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: learningPointsList.length,
      separatorBuilder: (BuildContext context, int index) => AppSizesUnit.sizedBox16,
      itemBuilder: (BuildContext context, int index) {
        return _LearningPointItem(learningPointsList[index],
            selectCallback: selectCallback,
            deselectCallback: deselectCallback,
            disabled: selectedId.isNotEmpty && selectedId != learningPointsList[index].id,
            active: selectedId == learningPointsList[index].id);
      },
    );
  }
}

class _LearningPointItem extends HookWidget {
  final LearningPoint learningPoint;
  final Function(LearningPoint learningPoint) selectCallback;
  final Function(LearningPoint learningPoint) deselectCallback;
  final bool disabled;
  final bool active;

  const _LearningPointItem(this.learningPoint,
      {Key? key,
      required this.selectCallback,
      required this.deselectCallback,
      required this.active,
      required this.disabled})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final onHover = useState<bool>(false);
    return GestureDetector(
      onTap: active
          ? () => deselectCallback(learningPoint)
          : disabled
              ? null
              : () => selectCallback(learningPoint),
      child: FocusableActionDetector(
        mouseCursor: disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
        onShowHoverHighlight: (value) => onHover.value = value,
        child: Material(
          child: ListTile(
            tileColor: active ? AppColors.secondaryBlue : AppColors.white,
            textColor: active
                ? AppColors.white
                : disabled
                    ? AppColors.blueGray200
                    : AppColors.primaryBlue,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)), side: BorderSide(color: AppColors.blueGray400)),
            title: Row(
              children: [
                active
                    ? const Icon(AppIcons.subtract, color: AppColors.orange)
                    : Icon(AppIcons.add, color: disabled ? AppColors.blueGray200 : AppColors.primaryBlue),
                AppSizesUnit.sizedBox16,
                Expanded(
                  child: Text(
                    learningPoint.learningPoint,
                    style: TextStyle(
                        color: active
                            ? AppColors.white
                            : disabled
                                ? AppColors.blueGray200
                                : AppColors.primaryBlue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
