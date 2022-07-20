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
  static SvgPicture tutorSVG = SvgPicture.asset(
    'assets/images/Group 1471.svg',
    width: 254,
    height: 254,
  );
  static SvgPicture tutorStatusSVG = SvgPicture.asset(
    'assets/images/Tutor - status.svg',
    width: 100,
    height: 100,
  );
  static SvgPicture waitingSVG = SvgPicture.asset(
    'assets/images/Waiting.svg',
    width: 500,
    height: 500,
  );
}
