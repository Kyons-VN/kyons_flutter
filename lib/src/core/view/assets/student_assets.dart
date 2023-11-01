import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_package/shared_package.dart';

class StudentAssets {
  StudentAssets._();

  static final attributes = SvgPicture.asset('assets/images/Spider chart.svg');
  static final mathImage = SvgPicture.asset('assets/images/Math.svg');
  static final speed = SvgPicture.asset('assets/images/Speed.svg');
  static final speedGrey = SvgPicture.asset('assets/images/Speed BW.svg');
  static const heroImage = Image(
    image: AssetImage('assets/images/hero-image.webp'),
    fit: BoxFit.cover,
    alignment: Alignment.bottomCenter,
  );
  static const noLearningGoalXs = AssetImage('assets/images/nolgxs.webp');
  static const noLearningGoal = AssetImage('assets/images/nolg.webp');
  static final planet = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 278,
    height: 278,
  );
  static final planetSmall = SvgPicture.asset(
    'assets/images/planet.svg',
    width: 173,
    height: 173,
  );
  static SvgPicture planetImageXs1 = SvgPicture.asset(
    '/images/planet.svg',
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
    'assets/images/home-xs.jpg',
    fit: BoxFit.cover,
  );
  static AssetImage homeImage = AssetImage('assets/images/home.jpg');
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
  static AssetImage learningPathXs = AssetImage('assets/images/learningpathxs.webp');
  static AssetImage newBlock = AssetImage('assets/images/NewBlock.webp');
  static AssetImage waitingBlock = AssetImage('assets/images/WaitingBlock.webp');
  static AssetImage completeBlock = AssetImage('assets/images/CompleteBlock.webp');
}
