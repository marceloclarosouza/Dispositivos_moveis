import 'package:flutter/material.dart';

//
// bloco principal
//
void main() {
  //indicar qual tela será carregada inicialmente
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App02',
      home: TelaPrincipal(),
    ),
  );
}

//
//Tela principal
//
class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu primeiro App'),
        backgroundColor: Colors.deepPurple,
      
      ),
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          Text('Text1'),
          Row(
            children:[
              Icon(Icons.pan_tool, size: 60),
              Icon(Icons.pan_tool, size: 60),
              Icon(Icons.pan_tool, size: 60),
              Column(children: [
                Text('Linha1'),
                Text('Linha2'),
                Text('Linha3'),
              ],)
            ]
          ),
          Text('Text2'),
          Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple[200],
            child: Text('Text3'),

          ),
          Text('Text4'),
          
        ],        
      )
    );
  }
}
