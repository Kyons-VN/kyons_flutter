import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudentAssets {
  StudentAssets._();

  static const heroImage = Image(image: AssetImage('assets/images/hero-image.webp'));
  static final planet = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 278,
    height: 278,
  );
}
