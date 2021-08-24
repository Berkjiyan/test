import 'package:flutter/rendering.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';
class SignInBackgroundColor extends CustomPainter{
  @override
  SignInBackgroundColor()
      : redPaint = Paint()
          ..color = CustomColors.red
          ..style = PaintingStyle.fill;

  final Paint redPaint;

  void paint(Canvas canvas, Size size) {
    print('painting');
    paintRed(canvas, size);
  }
  void paintRed(Canvas canvas, Size size){
    final path = Path();
    path.moveTo(size.width, size.height/2);
    path.lineTo(0, 0);
    path.close();
    
    canvas.drawPath(path, redPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}