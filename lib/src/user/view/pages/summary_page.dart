import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/user/app/summary/summary_controller.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_drawer.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.account),
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Heading(4, t(context).yourAccount),
              AppSizesUnit.sizedBox24,
              Container(
                padding: const EdgeInsets.all(AppSizesUnit.medium16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
                ),
                child: Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(summaryControllerProvider);
                    if (state.isLoading) return const Center(child: CircularProgressIndicator());
                    if (state.error.isSome()) {
                      return Center(
                          child: Text(state.error.getOrElse(() => const ApiFailure.serverError()).toString()));
                    }
                    final inventory = state.inventory;
                    final balance = state.balance;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(t(context).balance),
                        AppSizesUnit.sizedBox8,
                        Heading(6, balance.value.price(Locale(t(context).localeName))),
                        AppSizesUnit.sizedBox8,
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                            border: Border.all(color: AppColors.blueGray300),
                          ),
                          padding: const EdgeInsets.all(AppSizesUnit.small8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(t(context).mockTest),
                              Text(
                                '${inventory.mockTest.toString()} ${t(context).lesson}'.firstCapital(),
                                style: Theme.of(context).textTheme.bold,
                              ),
                            ],
                          ),
                        ),
                        // AppSizesUnit.sizedBox8,
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: AppColors.white,
                        //     borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                        //   ),
                        //   padding: const EdgeInsets.all(AppSizesUnit.small8),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(t(context).tutorSuggestions),
                        //       Text(inventory..toString()),
                        //     ],
                        //   ),
                        // ),
                        AppSizesUnit.sizedBox8,
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                            border: Border.all(color: AppColors.blueGray300),
                          ),
                          padding: const EdgeInsets.all(AppSizesUnit.small8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(t(context).learningPackage),
                              Text(
                                t(context).leftSt(inventory.subscription.time(context)).firstCapital(),
                                style: Theme.of(context).textTheme.bold,
                              ),
                            ],
                          ),
                        ),
                        AppSizesUnit.sizedBox8,
                        ElevatedButton(
                          onPressed: () => context.go(AppPaths.packages.path),
                          child: Text(t(context).buyMore),
                        ).medium(context),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
