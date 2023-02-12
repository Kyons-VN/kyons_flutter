import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_package/shared_package.dart';

class ThreeFourthsCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final offset = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..color = AppColors.white;
    final rect = Rect.fromCenter(center: offset, width: size.width, height: size.height);
    canvas.drawArc(rect, 0, (360 * 0.75) * math.pi / 180, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AnimationController animationController1 =
        useAnimationController(duration: const Duration(seconds: 3), initialValue: 1);
    AnimationController animationController2 =
        useAnimationController(duration: const Duration(seconds: 3), initialValue: 0.75)..repeat();
    animationController1.repeat(reverse: false);
    final animTurn = Tween<double>(begin: 0.0, end: -1.0).animate(animationController2);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: AppColors.primaryBlue,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animationController1,
              child: SizedBox(
                height: 100,
                width: 100,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animTurn,
              child: SizedBox(
                height: 75,
                width: 75,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animationController1,
              child: SizedBox(
                height: 50,
                width: 50,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
