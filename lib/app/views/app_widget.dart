import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/views/home_view.dart';
import 'package:transparencia_tjsp/app/views/mapa_de_precatorios.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/precatorios-ano': (context) => MapaPrecatoriosPage(),
      },
    );
  }
}
