part of 'themes.dart';

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

class Heading extends StatelessWidget {
  final int heading;
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  const Heading(this.heading, this.text, {Key? key, this.color, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: _getHeading(heading, context).copyWith(color: color ?? AppColors.primaryBlue), textAlign: textAlign);
  }
}

TextStyle _getHeading(int heading, BuildContext context) {
  TextStyle style;
  switch (heading) {
    case 1:
      style = Theme.of(context).textTheme.heading1;
      break;
    case 2:
      style = Theme.of(context).textTheme.heading2;
      break;
    case 3:
      style = Theme.of(context).textTheme.heading3;
      break;
    case 4:
      style = Theme.of(context).textTheme.heading4;
      break;
    case 5:
      style = Theme.of(context).textTheme.heading5;
      break;
    case 6:
      style = Theme.of(context).textTheme.heading6;
      break;
    case 7:
      style = Theme.of(context).textTheme.heading7;
      break;
    case 8:
      style = Theme.of(context).textTheme.heading8;
      break;
    default:
      style = Theme.of(context).textTheme.heading1;
      break;
  }
  return style;
}
