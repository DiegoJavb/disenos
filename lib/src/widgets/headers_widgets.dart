import 'package:flutter/material.dart';

class HeadersCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class HeadersBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          color: Color(0xff615AAB)),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWavesPainter()),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Este es el lapiz
    // Propiedades
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke
    paint.strokeWidth = 2;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    // pedir que se muestre en el canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //properties
    //este es el lapiz
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke
    paint.strokeWidth = 2;

    // ruta para el lapiz
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    //pedir que se muestre en el canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(HeaderTriangular oldDelegate) => true;
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke ;
    paint.strokeWidth = 2;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // pedir que se siga dibujando
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderCurvoPainter oldDelegate) => true;
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke ;
    paint.strokeWidth = 30;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.4,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);

    // pedir que se siga dibujando
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderCurvoPainter oldDelegate) => true;
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke ;
    paint.strokeWidth = 30;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.2,
      size.width * 0.5,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.3,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);

    // pedir que se siga dibujando
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderWavesPainter oldDelegate) => true;
}

class HeaderWaveGraciente extends StatelessWidget {
  const HeaderWaveGraciente({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWavesGradiente()),
    );
  }
}

class _HeaderWavesGradiente extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCircle(center: Offset(0.0, 55.0), radius: 180);
    const Gradient gradiente = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff66D05E8),
          Color(0xffC012FF),
          Color(0xff6d05FA),
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ]);
    // lapiz
    final paint = Paint()..shader = gradiente.createShader(rect);

    // paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill; //.fill    .stroke ;
    paint.strokeWidth = 30;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.2,
      size.width * 0.5,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.3,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);

    // pedir que se siga dibujando
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderWavesGradiente oldDelegate) => true;
}
