import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_package/shared_package.dart';

class StudentAssets {
  StudentAssets._();

  static const heroImage = Image(image: AssetImage('assets/images/hero-image.webp'));
  static final planet = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 278,
    height: 278,
  );
  static SvgPicture planetImageXs1 = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 63.39,
    height: 63.39,
  );
  static SvgPicture planetImageXs2 = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 171,
    height: 171,
  );
  static const AssetImage heroImageXs = AssetImage(
    'assets/images/hero-image-xs.jpg',
  );
  static Image homeImageXs = Image.asset(
    'assets/images/home.jpg',
    fit: BoxFit.cover,
  );
  static SvgPicture bankTransfer = SvgPicture.asset(
    'assets/images/BankTransfer.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture card = SvgPicture.asset(
    'assets/images/Card.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture cash = SvgPicture.asset(
    'assets/images/Cash.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture facebook = SvgPicture.asset(
    'assets/images/Facebook.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture google = SvgPicture.asset(
    'assets/images/Google.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture momo = SvgPicture.asset(
    'assets/images/Momo.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture paypal = SvgPicture.asset(
    'assets/images/Paypal.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture zaloPay = SvgPicture.asset(
    'assets/images/ZaloPay.svg',
    width: AppSizesUnit.large40,
    height: AppSizesUnit.large40,
  );
  static SvgPicture avatar = SvgPicture.asset(
    'assets/images/Avatar.svg',
    width: AppSizesUnit.large56,
    height: AppSizesUnit.large56,
  );
}
