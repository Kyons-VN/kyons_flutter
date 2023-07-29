import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/user/domain/balance.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_drawer.dart';
import '../../app/packages/packages_controller.dart';
import '../../domain/package.dart';
import '../menus/menu_item.dart';

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key});

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
              Heading(4, t(context).kyonsPackages),
              AppSizesUnit.sizedBox24,
              MenuItem(text: t(context).depositToAccount, path: AppPaths.topUp.path),
              // Container(
              //   padding: const EdgeInsets.all(AppSizesUnit.medium16),
              //   decoration: BoxDecoration(
              //     color: AppColors.white,
              //     borderRadius: BorderRadius.circular(AppSizesUnit.small8),
              //   ),
              //   child: Row(children: [
              //     Expanded(child: Text(t(context).depositToAccount, style: Theme.of(context).textTheme.bold)),
              //     AppSizesUnit.sizedBox8,
              //     const Icon(AppIcons.ArrowRight, color: AppColors.orange, size: AppSizesUnit.medium24),
              //   ]),
              // ),
              AppSizesUnit.sizedBox24,
              Expanded(
                child: Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(packagesControllerProvider);
                    final controller = ref.read(packagesControllerProvider.notifier);
                    ref.listen<PackagesState>(packagesControllerProvider, (previous, next) {
                      if (next.isDone) {
                        showDialog(
                          context: context,
                          builder: (context) => AppDialog(
                            title: Heading(7, t(context).buySuccess),
                            body: AppHtml(
                                data: t(context).buySuccessDesc(next.quantity.getOrElse(() => 0),
                                    next.orderedPackage.getOrElse(() => Package.empty()).name, '')),
                            actions: [
                              ElevatedButton(onPressed: () => context.pop(), child: Text(t(context).closeDialog))
                                  .medium(context)
                            ],
                          ),
                        );
                      }
                      if (next.showError) {
                        showDialog(
                          context: context,
                          builder: (context) => AppDialog(
                            title: Heading(7, t(context).canNotBuyPackage),
                            body: Text(t(context).canNotBuyPackageDesc),
                            actions: [
                              ElevatedButton(onPressed: () => context.pop(), child: Text(t(context).closeDialog))
                                  .medium(context)
                            ],
                          ),
                        );
                      }
                    });
                    if (state.isLoading) return const Center(child: CircularProgressIndicator());
                    if (state.error.isSome()) {
                      return Center(
                          child: Text(state.error.getOrElse(() => const ApiFailure.serverError()).toString()));
                    }
                    final packages = state.packages.getOrElse(() => []);
                    final balance = state.balance.getOrElse(() => Balance.empty());
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                      ),
                      padding: const EdgeInsets.all(AppSizesUnit.medium16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(t(context).balance),
                          AppSizesUnit.sizedBox8,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Heading(6, balance.value.price(Locale(t(context).localeName))),
                              AppSizesUnit.sizedBox16,
                              OutlinedButton(onPressed: controller.getBalance, child: const Icon(Icons.refresh))
                                  .smallIcon(context),
                            ],
                          ),
                          AppSizesUnit.sizedBox8,
                          Expanded(
                            child: ListView.separated(
                              separatorBuilder: (BuildContext context, int index) => AppSizesUnit.sizedBox8,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                                      border: Border.all(color: AppColors.blueGray400)),
                                  padding: const EdgeInsets.all(AppSizesUnit.small8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Heading(8, packages[index].name),
                                          Heading(8, packages[index].salePrice.price(Locale(t(context).localeName))),
                                        ],
                                      ),
                                      AppHtml(data: packages[index].description),
                                      AppSizesUnit.sizedBox8,
                                      OutlinedButton(
                                              onPressed: () {
                                                if (balance.value < packages[index].price) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) => const NotBuyDialog(),
                                                  );
                                                } else {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) => AppFullPageDialog(
                                                      body: HookBuilder(
                                                        builder: (context) {
                                                          final quantity = useState(1);
                                                          final isValid = useState(true);
                                                          return Column(
                                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                                            children: [
                                                              AppSizesUnit.sizedBox24,
                                                              Heading(4, packages[index].name),
                                                              AppSizesUnit.sizedBox24,
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                  color: AppColors.white,
                                                                  borderRadius:
                                                                      BorderRadius.circular(AppSizesUnit.small8),
                                                                ),
                                                                padding: const EdgeInsets.all(AppSizesUnit.medium24),
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                  children: [
                                                                    Text(t(context).quantity),
                                                                    AppSizesUnit.sizedBox8,
                                                                    TextFormField(
                                                                      autovalidateMode: AutovalidateMode.always,
                                                                      initialValue: quantity.value.toString(),
                                                                      keyboardType: TextInputType.number,
                                                                      inputFormatters: <TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9]')),
                                                                        FilteringTextInputFormatter.digitsOnly
                                                                      ],
                                                                      validator: (value) {
                                                                        if (value == null || value.isEmpty) {
                                                                          // isValid.value = false;
                                                                          return t(context).numberTypeError;
                                                                        }
                                                                        if (int.tryParse(value) == null) {
                                                                          // isValid.value = false;
                                                                          return t(context).numberTypeError;
                                                                        }
                                                                        final quantityValue = int.parse(value);
                                                                        if (quantityValue < 0) {
                                                                          // isValid.value = false;
                                                                          return t(context)
                                                                              .invalidThing(t(context).quantity);
                                                                        }
                                                                        if (quantityValue > packages[index].limit) {
                                                                          // isValid.value = false;
                                                                          return t(context).youCanBuyOnlyNumberPackage(
                                                                              packages[index].limit);
                                                                        }
                                                                        // isValid.value = true;
                                                                        return null;
                                                                      },
                                                                      onChanged: (value) {
                                                                        if (value.isEmpty) {
                                                                          isValid.value = false;
                                                                          return;
                                                                        }
                                                                        if (int.tryParse(value) != null) {
                                                                          isValid.value = true;
                                                                          quantity.value = int.parse(value);
                                                                        } else {
                                                                          isValid.value = false;
                                                                        }
                                                                      },
                                                                    ),
                                                                    AppSizesUnit.sizedBox24,
                                                                    Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children: [
                                                                        Heading(7, t(context).totalPrice),
                                                                        Heading(
                                                                            7,
                                                                            (packages[index].salePrice * quantity.value)
                                                                                .price(Locale(t(context).localeName))),
                                                                      ],
                                                                    ),
                                                                    AppSizesUnit.sizedBox24,
                                                                    ElevatedButton(
                                                                            onPressed: isValid.value &&
                                                                                    quantity.value <=
                                                                                        packages[index].limit
                                                                                ? () {
                                                                                    if (packages[index].salePrice *
                                                                                            quantity.value >
                                                                                        balance.value) {
                                                                                      showDialog(
                                                                                        context: context,
                                                                                        builder: (context) =>
                                                                                            const NotBuyDialog(),
                                                                                      );
                                                                                    } else {
                                                                                      ref
                                                                                          .read(
                                                                                              packagesControllerProvider
                                                                                                  .notifier)
                                                                                          .buyPackage(packages[index],
                                                                                              quantity.value);
                                                                                      context.pop();
                                                                                    }
                                                                                  }
                                                                                : null,
                                                                            child: Text(t(context).confirm))
                                                                        .medium(context),
                                                                    AppSizesUnit.sizedBox8,
                                                                    OutlinedButton(
                                                                            onPressed: context.pop,
                                                                            child: Text(t(context).cancel))
                                                                        .medium(context),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  );
                                                }
                                              },
                                              child: Text(t(context).buyPackage))
                                          .small(context),
                                    ],
                                  ),
                                );
                              },
                              itemCount: packages.length,
                            ),
                          ),
                        ],
                      ),
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

class NotBuyDialog extends StatelessWidget {
  const NotBuyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: Heading(7, t(context).canNotBuyPackage),
      body: Text(t(context).canNotBuyPackageDesc),
      actions: [ElevatedButton(onPressed: () => context.pop(), child: Text(t(context).closeDialog)).medium(context)],
    );
  }
}
