import 'package:flutter_svg/flutter_svg.dart';

class AppAssets {
  AppAssets._();

  static SvgPicture logoSVG = SvgPicture.asset(
    'assets/images/Vertical logo.svg',
    width: 100,
    height: 100,
  );
  static SvgPicture chooseSubjectSVG = SvgPicture.asset(
    'assets/images/Choose subject.svg',
    width: 200,
    height: 200,
  );
}
