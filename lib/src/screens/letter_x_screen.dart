import 'package:disenos/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LetterXContainer extends StatelessWidget {
  const LetterXContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff615AAB),
      body: Center(
        child: Container(
          color: const Color(0xff615AAB),
          width: 300,
          // color: Colors.amber,
          child: Stack(
            children: [
              Positioned(
                left: 200,
                child: Container(
                  width: 100,
                  height: 130,
                  child: ArrowBack(),
                ),
              ),
              Container(
                width: 100,
                height: 130,
                child: ArrowFord(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArrowFord extends StatefulWidget {
  @override
  State<ArrowFord> createState() => _ArrowFordState();
}

class _ArrowFordState extends State<ArrowFord>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> moverDerecha;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    moverDerecha = Tween(begin: 0.0, end: 70.0).animate(controller);
    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller.isCompleted;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _ArrowForPainter(),
              foregroundPainter: MyForegroundForPainter(),
            ),
          ),
        );
      },
    );
  }
}

class _ArrowForPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.stroke; //.fill    .stroke
    paint.strokeWidth = 20;

    final path = Path();

    path.moveTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.4, size.height * 0.5);
    path.lineTo(0, size.height * 0.75);
    path.lineTo(size.width * 0.4, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.4, 0);
    path.lineTo(0, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyForegroundForPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 0.0;

    final path = Path();

    path.moveTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.4, size.height * 0.5);
    path.lineTo(0, size.height * 0.75);
    path.lineTo(size.width * 0.4, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.4, 0);
    path.lineTo(0, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Devuelve true si el contenido debe volver a pintarse.
  }
}

class ArrowBack extends StatefulWidget {
  @override
  State<ArrowBack> createState() => _ArrowBackState();
}

class _ArrowBackState extends State<ArrowBack>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> moverIzquierda;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    moverIzquierda = Tween(begin: 0.0, end: -70.0).animate(controller);
    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller.isCompleted;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(moverIzquierda.value, 0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _ArrowBackPainter(),
              foregroundPainter: MyForegroundBackPainter(),
            ),
          ),
        );
      },
    );
  }
}

class _ArrowBackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.stroke; //.fill    .stroke
    paint.strokeWidth = 20;

    final path = Path();

    path.moveTo(size.width, size.height * 0.25);
    path.lineTo(size.width * 0.6, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width * 0.6, size.height);
    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.6, 0);
    path.lineTo(size.width, size.height * 0.25);
    // path.lineTo(0, size.height * 0.5);

    // pedir que se muestre en el canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyForegroundBackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 0.0;

    final path = Path();

    path.moveTo(size.width, size.height * 0.25);
    path.lineTo(size.width * 0.6, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width * 0.6, size.height);
    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.6, 0);
    path.lineTo(size.width, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Devuelve true si el contenido debe volver a pintarse.
  }
}
