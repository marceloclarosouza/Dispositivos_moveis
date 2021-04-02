//
// TERCEIRA TELA
//
import 'package:flutter/material.dart';

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Tela'),
        //desabilitar o botão de voltar no AppBar
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          Row(
            children: [
              ElevatedButton(
                child: Text('Anterior'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text('Próximo'),
                onPressed: () {
                  Navigator.pushNamed(context, '/tela4');
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

