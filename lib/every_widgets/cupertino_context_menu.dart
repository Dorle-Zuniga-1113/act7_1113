import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget055 extends StatelessWidget {
  const Widget055({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cupertinoContextMenu = CupertinoContextMenu(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/800px-YouTube_full-color_icon_%282017%29.svg.png',
          fit: BoxFit.cover,
        ),
      ),
      actions: <Widget>[
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.share,
          child: const Text('Compartir'),
          onPressed: () {
            Navigator.pop(context);
            _showSnackbar(context, 'Compartir presionado');
          },
        ),
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.heart,
          child: const Text('Guardar en favoritos'),
          onPressed: () {
            Navigator.pop(context);
            _showSnackbar(context, 'Guardado en favoritos');
          },
        ),
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.delete,
          isDestructiveAction: true,
          child: const Text('Eliminar'),
          onPressed: () {
            Navigator.pop(context);
            _showSnackbar(context, 'Eliminar presionado');
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoContextMenu Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Presiona largamente la imagen para ver el menú contextual',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 150,
              height: 150,
              child: cupertinoContextMenu,
            ),
            const SizedBox(height: 30),
            const Text(
              'Este es un menú contextual al estilo iOS',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
