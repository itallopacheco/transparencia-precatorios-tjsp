import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Filtrar Precatórios'),
            onTap: () {
              // Lógica para ação da opção 1
            },
          ),
          ListTile(
            title: Row(
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
            title: Text('Duvidas Frequentes'),
            onTap: () {
              // Lógica para ação da opção 3
            },
          ),
          ListTile(
            title: Text('Precatórios por ano'),
            onTap: () {
              // Lógica para ação da opção 4
            },
          ),
        ],
      ),
    );
  }
}
