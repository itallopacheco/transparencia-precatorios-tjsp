import 'package:flutter/material.dart';
import 'package:transparencia_tjsp/app/views/home_view.dart';
import 'package:transparencia_tjsp/app/views/mapa_de_precatorios.dart';

/// O widget principal que define a estrutura do aplicativo.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Rota inicial do aplicativo.
      initialRoute: '/',

      /// Mapeamento de rotas para diferentes telas do aplicativo.
      routes: {
        '/': (context) => HomePage(), // Rota para a tela inicial
        '/precatorios-ano': (context) =>
            MapaPrecatoriosPage(), // Rota para a tela de mapa de precatórios anuais
      },
    );
  }
}
