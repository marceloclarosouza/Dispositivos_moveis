//
// PRIMEIRA TELA
//
import 'package:flutter/material.dart';

import 'mensagem.dart';

class PrimeiraTela extends StatefulWidget {
  @override
  _PrimeiraTelaState createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
  var _txtTitulo = TextEditingController();
  var _txtConteudo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primeira Tela')),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          TextField(
            controller: _txtTitulo,
            decoration: InputDecoration(
                labelText: 'Título', border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _txtConteudo,
            keyboardType: TextInputType.multiline,
            maxLines: 10,
            decoration: InputDecoration(
                labelText: 'Conteúdo',
                border: OutlineInputBorder(),
                alignLabelWithHint: true),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Próximo'),
            onPressed: () {
              /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SegundaTela()
                  )
                );
              */

              setState(() {

                var msg = Mensagem(
                  _txtTitulo.text, _txtConteudo.text
                );

                Navigator.pushNamed(context, '/tela2',
                    arguments: msg);
              });

            },
          ),
        ]),
      ),
    );
  }
}

