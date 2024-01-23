import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/components/drawer.dart';

class MapaPrecatoriosPage extends StatefulWidget {
  @override
  State<MapaPrecatoriosPage> createState() {
    return MapaPrecatoriosPageState();
  }
}

class MapaPrecatoriosPageState extends State<MapaPrecatoriosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa de Precatórios'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: [],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
