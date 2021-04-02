import 'package:flutter/material.dart';

import 'primeira.dart';
import 'quarta.dart';
import 'segunda.dart';
import 'terceira.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigator',
    //home: PrimeiraTela(),

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/tela1',
    routes: {
      '/tela1': (context) => PrimeiraTela(),
      '/tela2': (context) => SegundaTela(),
      '/tela3': (context) => TerceiraTela(),
      '/tela4': (context) => QuartaTela(),
    },
  ));
}

