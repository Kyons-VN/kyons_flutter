part of 'theme.dart';

extension XTextTheme on TextTheme {
  TextStyle get heading1 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading1,
      );
  TextStyle get heading2 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading2,
      );
  TextStyle get heading3 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading3,
      );
  TextStyle get heading4 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading4,
      );
  TextStyle get heading5 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading5,
      );
  TextStyle get heading6 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading6,
      );
  TextStyle get heading7 => headlineMedium!.copyWith(
        fontSize: AppFontSizes.heading7,
      );
  TextStyle get heading8 => headline1!.copyWith(
        fontSize: AppFontSizes.heading8,
        fontWeight: FontWeight.w800,
      );
  TextStyle get paragraph => bodyMedium!;
  TextStyle get bold => paragraph.copyWith(fontWeight: FontWeight.w700);
  TextStyle get tableRow => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: AppFontSizes.table,
      );
  TextStyle get tableHeader => tableRow.copyWith(
        fontWeight: FontWeight.w700,
      );
}
