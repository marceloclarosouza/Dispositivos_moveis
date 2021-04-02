//
// QUARTA TELA
//
import 'package:flutter/material.dart';

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quarta Tela'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          ElevatedButton(
            child: Text('Anterior'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
