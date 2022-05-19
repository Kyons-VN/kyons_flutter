import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Container(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(''),
        onPressed: () {},
        icon: const Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // state.showOpenTables ? Theme.of(context).primaryColor : Theme.of(context).accentColor,
      ),
    );
  }
}
