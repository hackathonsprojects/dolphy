import 'dart:math';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/common_widgets/custom_text.dart';
import 'package:dolphy/presentation/pages/details/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCardWidget extends StatelessWidget {
  const AddToCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CustomPaint(
          size: const Size(10, 100),
          painter: ShapePainter(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.qrcode_viewfinder,
                  size: 53,
                  color: whiteColor,
                ),
                onPressed: () {
                  print("tap");
                },
              ),
            ),
            // CustomText(
            //   text: addtoCardText,
            //   minFontSize: 23,
            //   maxFontSize: 28,
            //   textStyle: TextStyle(color: whiteColor, fontWeight: FontWeight.w600),
            // )
          ],
        ),
      ],
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = appBarIconButtonColor
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCenter(
        center: const Offset(0, 100),
        height: 180,
        width: 450,
      ),
      pi,
      pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
