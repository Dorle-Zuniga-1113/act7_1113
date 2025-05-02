import 'package:flutter/material.dart';

class Widget026 extends StatelessWidget {
  const Widget026({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Baseline'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: const Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
