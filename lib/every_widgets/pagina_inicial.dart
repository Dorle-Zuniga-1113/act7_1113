import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff88ce),
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // Widget Center añadido aquí
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20), // Padding general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
            children: [
              //_buildButton(context, '/pantalla2', 'Pantalla Dos'),
              //const SizedBox(height: 15),
              // _buildButton(context, '/pantalla3', 'Pantalla Tres'),
              //const SizedBox(height: 15),
              _buildButton(context, '/pantalla4', 'animated opacity'),
              const SizedBox(height: 15),
              _buildButton(context, '/pantalla5', 'baseline'),
              const SizedBox(height: 15),
              _buildButton(context, '/pantalla6', 'clip path '),
              const SizedBox(height: 15),
              _buildButton(context, '/pantalla7', 'Cupertino context menu'),
              const SizedBox(height: 15),
              _buildButton(context, '/pantalla8', 'Cupertino tab view'),
              const SizedBox(height: 15),
              _buildButton(context, '/pantalla9', 'Draggable scroll sheet'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String route, String text) {
    return SizedBox(
      width: 250, // Ancho un poco mayor para mejor visualización
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16), // Más altura
          shape: RoundedRectangleBorder(
            // Bordes redondeados
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
