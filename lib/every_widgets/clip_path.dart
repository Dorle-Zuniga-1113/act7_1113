import 'package:flutter/material.dart';

class Widget040 extends StatelessWidget {
  const Widget040({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de ClipPath'),
        backgroundColor: const Color(0xFF142B46),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: 300,
              color: const Color(0xFF142B46),
              child: const Center(
                child: Text(
                  'ClipPath Personalizado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Este es un ejemplo de cómo usar ClipPath con un clipper personalizado para crear formas no rectangulares.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20,
      )
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
        size.height - 30,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
