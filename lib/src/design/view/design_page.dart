import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const MainAppBar(),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Text('Heading1', style: Theme.of(context).textTheme.heading1),
                  const SizedBox(height: 8),
                  Text('Heading2', style: Theme.of(context).textTheme.heading2),
                  const SizedBox(height: 8),
                  Text('Heading3', style: Theme.of(context).textTheme.heading3),
                  const SizedBox(height: 8),
                  Text('Heading4', style: Theme.of(context).textTheme.heading4),
                  const SizedBox(height: 8),
                  Text('Heading5', style: Theme.of(context).textTheme.heading5),
                  const SizedBox(height: 8),
                  Text('Heading6', style: Theme.of(context).textTheme.heading6),
                  const SizedBox(height: 8),
                  Text('Heading7', style: Theme.of(context).textTheme.heading7),
                  const SizedBox(height: 8),
                  Text('Heading8', style: Theme.of(context).textTheme.heading8),
                  const SizedBox(height: 8),
                  const Text('body'),
                  const SizedBox(height: 8),
                  TextButton(onPressed: () {}, child: const Text('Text link')),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('Button')),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('Button')).medium(context),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('Button')).small(context),
                  const SizedBox(height: 8),
                  const ElevatedButton(onPressed: null, child: Text('Button')),
                  const SizedBox(height: 8),
                  OutlinedButton(onPressed: () {}, child: const Text('Button')),
                  const SizedBox(height: 8),
                  OutlinedButton(onPressed: () {}, child: const Text('Button')).medium(context),
                  const SizedBox(height: 8),
                  OutlinedButton(onPressed: () {}, child: const Text('Button')).small(context),
                  const SizedBox(height: 8),
                  const OutlinedButton(onPressed: null, child: Text('Button')),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  const Icon(AppIcons.notification),
                  const Icon(AppIcons.lessonContent),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
