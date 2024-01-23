import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/components/drawer.dart';
import 'package:transparencia_tjsp/app/components/year_filter.dart';

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
        title: const Text('Mapa Anual de Precatórios'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(children: [
              Text('De: '),
              YearDropdown(),
              Text(' Até: '),
              YearDropdown(),
              _buildSubmitButton(),
            ]),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

_buildSubmitButton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.search),
      label: Text('Filtrar'),
    ),
  );
}
