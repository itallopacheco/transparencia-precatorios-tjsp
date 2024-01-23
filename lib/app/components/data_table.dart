import 'package:flutter/material.dart';

class TabelaDadosPrecatorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(
            label: Text(
              'Ano',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'Esfera do Devedor',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'Cod. Mun.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'Regime de Pagamento',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('2021')),
              DataCell(Text('Estadual')),
              DataCell(Text('123')),
              DataCell(Text('Parcelado')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('2022')),
              DataCell(Text('Municipal')),
              DataCell(Text('456')),
              DataCell(Text('À vista')),
            ],
          ),
        ],
      ),
    );
  }
}
