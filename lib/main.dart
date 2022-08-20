import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   visualDensity: VisualDensity.standard,
      //   textTheme: GoogleFonts.montserratTextTheme(
      //     Typography().black.copyWith(
      //           headlineMedium: const TextStyle(
      //             fontWeight: FontWeight.w700,
      //             color: AppColors.primaryBlue,
      //           ),
      //           bodyMedium: const TextStyle(
      //             fontSize: AppFontSizes.paragraph,
      //             fontWeight: FontWeight.w400,
      //             color: AppColors.primaryBlue,
      //           ),
      //           titleMedium: const TextStyle(
      //             color: AppColors.primaryBlue,
      //           ),
      //           labelMedium: const TextStyle(
      //             color: AppColors.primaryBlue,
      //           ),
      //         ),
      //   ),
      // ),
      theme: lightTheme(),
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Button')).large(context),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: const Text('Button')).medium(context),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: const Text('Button')).small(context),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: const Text('Button')),
            ],
          ),
        ),
      ),
    );
  }
}
