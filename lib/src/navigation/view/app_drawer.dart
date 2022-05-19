import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Đăng xuất'),
            onTap: () {
              // context.read<AuthBloc>().add(const AuthEvent.signOut());
              // context.go(AppPath.signIn);
            },
          ),
        ],
      ),
    );
  }
}
