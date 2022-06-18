import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_button_theme.dart';
part 'app_colors.dart';
part 'app_font_sizes.dart';
part 'app_icons.dart';
part 'app_message.dart';
part 'app_spacings.dart';
part 'app_text_theme.dart';

ThemeData lightTheme() => ThemeData.light().copyWith(
    useMaterial3: true,
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: AppColors.blueGray100,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlue),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: MaterialStateOutlineInputBorder.resolveWith((states) {
        final bool isFocused = states.contains(MaterialState.focused);
        final bool isDisabled = states.contains(MaterialState.disabled);
        final bool hasError = states.contains(MaterialState.error);

        final Color color = isDisabled
            ? AppColors.blueGray400
            : hasError
                ? AppColors.red
                : isFocused
                    ? AppColors.primaryBlue
                    : AppColors.blueGray400;
        const double width = 1.0;
        const double radius = 5.0;

        return OutlineInputBorder(
            borderSide: BorderSide(color: color, width: width),
            borderRadius: const BorderRadius.all(Radius.circular(radius)));
      }),
      labelStyle: MaterialStateTextStyle.resolveWith((states) {
        final bool isDisabled = states.contains(MaterialState.disabled);
        final bool hasError = states.contains(MaterialState.error);

        final Color color = isDisabled
            ? AppColors.blueGray400
            : hasError
                ? AppColors.primaryBlue
                : AppColors.blueGray400;

        return TextStyle(color: color);
      }),
      fillColor: MaterialStateColor.resolveWith((states) {
        final bool isDisabled = states.contains(MaterialState.disabled);
        final Color color = isDisabled ? AppColors.blueGray200 : AppColors.white;

        return color;
      }),
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9.5),
    ),
    textTheme: GoogleFonts.montserratTextTheme(
      Typography().black.copyWith(
            headlineMedium: const TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.primaryBlue,
            ),
            bodyMedium: const TextStyle(
              fontSize: AppFontSizes.paragraph,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBlue,
            ),
            titleMedium: const TextStyle(
              color: AppColors.primaryBlue,
            ),
            labelMedium: const TextStyle(
              color: AppColors.primaryBlue,
            ),
          ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.blueGray200;
          }
          return AppColors.orange;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return AppColors.lightOrange3;
          if (states.contains(MaterialState.disabled)) return AppColors.blueGray400;
          return AppColors.white;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.blueGray200;
          }
          return AppColors.orange;
        }),
        textStyle: MaterialStateProperty.all(const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: AppFontSizes.button,
        )),
        shape:
            MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizesUnit.small5))),
        elevation: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return 1;
          return null;
        }),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17, horizontal: 20)),
        mouseCursor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) return SystemMouseCursors.forbidden;
          return SystemMouseCursors.click;
        }),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.orange),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return AppColors.lightOrange2;
          if (states.contains(MaterialState.pressed)) return AppColors.lightOrange3;
          return null;
        }),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
              fontWeight: FontWeight.w600, fontSize: AppFontSizes.button, decoration: (TextDecoration.underline)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.white),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) return AppColors.blueGray400;
          return AppColors.orange;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) return AppColors.blueGray300;
          return AppColors.white;
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          return TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: AppFontSizes.button,
            color: states.contains(MaterialState.disabled) ? AppColors.blueGray300 : AppColors.orange,
          );
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizesUnit.small5),
          );
        }),
        side: MaterialStateProperty.resolveWith((states) {
          Color borderColor = AppColors.blueGray300;
          if (states.contains(MaterialState.hovered)) {
            borderColor = AppColors.orange;
          }
          return BorderSide(
            color: borderColor,
          );
        }),
        elevation: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return 1;
          return null;
        }),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17, horizontal: 20)),
        mouseCursor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) return SystemMouseCursors.forbidden;
          return SystemMouseCursors.click;
        }),
      ),
    ),
    canvasColor: AppColors.orange,
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.primaryBlue,
      elevation: 1.0,
      width: double.infinity,
    ),
    dividerTheme: const DividerThemeData(
      endIndent: AppSizesUnit.medium16,
      indent: AppSizesUnit.medium16,
      space: 0,
      color: AppColors.blueGray400,
    ),
    iconTheme: const IconThemeData(color: AppColors.blueGray400),
    primaryIconTheme: const IconThemeData(color: AppColors.orange),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.blueGray400,
      ),
    ),
    errorColor: AppColors.red,
    bottomSheetTheme: const BottomSheetThemeData(
      modalBackgroundColor: AppColors.primaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizesUnit.medium24)),
      ),
    ));
ThemeData darkTheme() => ThemeData.dark().copyWith(
      useMaterial3: true,
      visualDensity: VisualDensity.standard,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlue),
      inputDecorationTheme: InputDecorationTheme(
        border: MaterialStateOutlineInputBorder.resolveWith((states) {
          // final isFocused = states.contains(MaterialState.focused);
          final isDisabled = states.contains(MaterialState.disabled);
          final hasError = states.contains(MaterialState.error);

          final color = isDisabled
              ? AppColors.blueGray400
              : hasError
                  ? Colors.red
                  : AppColors.red;
          const width = 1.0;

          return OutlineInputBorder(borderSide: BorderSide(color: color, width: width));
        }),
      ),
    );
