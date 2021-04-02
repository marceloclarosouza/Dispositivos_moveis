//
// SEGUNDA TELA
//
import 'package:flutter/material.dart';

import 'mensagem.dart';

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Recuperar os dados enviados
    final Mensagem msg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),

        //desabilitar o botão de voltar no AppBar
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        width: double.infinity,
        child: Column(children: [

          Text('Título', style:TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),  
          Text(msg.titulo, style:TextStyle(fontSize: 24)),  
          SizedBox(height: 20),

          Text('Conteúdo', style:TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),  
          Text(msg.conteudo, style:TextStyle(fontSize: 24)),  
          SizedBox(height: 20),

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
                  Navigator.pushNamed(context, '/tela3');
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

