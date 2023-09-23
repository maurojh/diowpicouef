import 'package:flutter/material.dart';

class DrawerAlterado extends StatelessWidget {
  const DrawerAlterado({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: const Text('Configurações'),
            ),
          ),
        ],
      ),
    );
  }
}