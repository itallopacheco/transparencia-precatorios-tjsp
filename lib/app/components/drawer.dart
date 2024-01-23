import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Filtrar Precatórios'),
            onTap: () {
              // Lógica para ação da opção 1
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Text('TJSP'),
                Icon(Icons.link),
                SizedBox(width: 8),
              ],
            ),
            onTap: () {
              // Lógica para ação da opção 2
            },
          ),
          ListTile(
            title: const Text('Duvidas Frequentes'),
            onTap: () {
              // Lógica para ação da opção 3
            },
          ),
          ListTile(
            title: const Text('Precatórios por ano'),
            onTap: () {
              // Lógica para ação da opção 4
            },
          ),
        ],
      ),
    );
  }
}
