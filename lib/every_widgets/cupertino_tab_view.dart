import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget069 extends StatefulWidget {
  const Widget069({Key? key}) : super(key: key);

  @override
  State<Widget069> createState() => _Widget069State();
}

class _Widget069State extends State<Widget069> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino TabBar Demo'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white,
            activeColor: CupertinoColors.activeBlue,
            inactiveColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                label: 'Profile',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          index == 0
                              ? CupertinoIcons.home
                              : index == 1
                                  ? CupertinoIcons.settings
                                  : CupertinoIcons.profile_circled,
                          size: 64,
                          color: CupertinoColors.activeBlue,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          index == 0
                              ? 'Página de Inicio'
                              : index == 1
                                  ? 'Configuraciones'
                                  : 'Perfil de Usuario',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
