import 'package:flutter/material.dart';

class YearDropdown extends StatefulWidget {
  @override
  _YearDropdownState createState() => _YearDropdownState();
}

class _YearDropdownState extends State<YearDropdown> {
  int selectedYear = 2019; // Valor inicial

  @override
  Widget build(BuildContext context) {
    List<int> years = List.generate(
        5, (index) => 2019 + index); // Lista de anos de 2019 a 2023

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
