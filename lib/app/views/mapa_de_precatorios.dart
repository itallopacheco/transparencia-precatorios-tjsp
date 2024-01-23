import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/components/drawer.dart';
import 'package:transparencia_tjsp/app/components/precatorios_list.dart';
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
      body: Column(
        // Mudei para Column
        children: [
          Row(
            children: [
              Text('De: '),
              YearDropdown(),
              Text(' Até: '),
              YearDropdown(),
              _buildSubmitButton(),
            ],
          ),
          SizedBox(height: 10),
          MockedCardList(),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

Widget _buildSubmitButton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.search),
      label: Text('Filtrar'),
    ),
  );
}

class YearDropdown extends StatefulWidget {
  @override
  _YearDropdownState createState() => _YearDropdownState();
}

class _YearDropdownState extends State<YearDropdown> {
  int selectedYear = DateTime.now().year; // Definindo um valor padrão

  @override
  Widget build(BuildContext context) {
    List<int> years = List.generate(5, (index) => DateTime.now().year - index);

    return DropdownButton<int>(
      value: selectedYear,
      onChanged: (int? year) {
        setState(() {
          selectedYear = year!;
        });
      },
      items: years.map<DropdownMenuItem<int>>((int year) {
        return DropdownMenuItem<int>(
          value: year,
          child: Text('$year'),
        );
      }).toList(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MapaPrecatoriosPage(),
  ));
}
