import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_bar.dart';
import '../../../navigation/view/app_drawer.dart';
import '../../app/transactions/transactions_controller.dart';

class TransactionsHistoryPage extends StatelessWidget {
  const TransactionsHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.user),
      endDrawer: const AppDrawer(),
      body: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizesUnit.medium24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Heading(4, t(context).transactionHistory),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                    ),
                    padding: const EdgeInsets.all(AppSizesUnit.medium16),
                    child: const TransactionTable()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionTable extends ConsumerWidget {
  const TransactionTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(transactionsControllerProvider);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.error.isSome()) {
      return Center(child: Text(state.error.getOrElse(() => const ApiFailure.serverError()).toString()));
    } else {
      final transactions = state.transactions;
      if (transactions.isEmpty) return Center(child: Text(t(context).emptyData));
      return ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [const Text('A'), const Text('B')],
                  ),
                ),
                const Text('C')
              ],
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: transactions.length);
    }
  }
}
