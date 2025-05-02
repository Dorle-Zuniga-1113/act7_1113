import 'package:flutter/material.dart';

class Widget085 extends StatelessWidget {
  const Widget085({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable Sheet Demo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.3, // 30% de la pantalla inicialmente
          minChildSize: 0.2, // Mínimo 20% de la pantalla
          maxChildSize: 1.0, // Máximo 100% de la pantalla
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Handle para arrastrar (visual)
                  Container(
                    width: 40,
                    height: 5,
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                  // Lista de items
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepOrange[700],
                            child: Text('$index',
                                style: const TextStyle(color: Colors.white)),
                          ),
                          title: Text('Item $index'),
                          subtitle: Text('Descripción del item $index'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Acción al tocar un item
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('Seleccionado Item $index')),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(Icons.home),
        backgroundColor: Colors.deepOrange,
        tooltip: 'Regresar al inicio',
      ),
    );
  }
}
