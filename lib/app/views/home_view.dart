import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/components/data_table.dart';
import 'package:transparencia_tjsp/app/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparência TJSP'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: [
            _buildFilterExpansionTile(),
            TabelaDadosPrecatorio(),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  Widget _buildFilterExpansionTile() {
    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.filter_list),
          SizedBox(width: 8),
          Text('Filtros'),
        ],
      ),
      children: [
        _buildFilterTextField('Municipio Devedor'),
        _buildFilterTextField('Entidade Devedora'),
        _buildFilterTextField('CNPJ'),
        _buildFilterTextField('Ano de Referência'),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildFilterTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        // TODO: Lógica para submeter os filtros
      },
      child: const Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 8),
          Text('Filtrar'),
        ],
      ),
    );
  }
}
