import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Tarefa',
      home: TelaPrincipal(),
    ),
  );
}

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: <Widget>[
            Expanded(flex: 80, child: Container(child: Text('Text'))),
            Expanded(flex: 20, child: Container(child: Icon(Icons.home))),
          ]),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Row(children: <Widget>[
              Expanded(
                  flex: 50,
                  child: Container(
                      child: Text('A'), color: Colors.yellow, height: 150)),
              Expanded(
                  flex: 50,
                  child: Container(
                      child: Text('B'), color: Colors.red, height: 150)),
            ]),
            Row(children: <Widget>[
              Expanded(
                  flex: 50,
                  child: Container(
                      child: Text('C'), color: Colors.green, height: 280))
            ]),
            Row(children: <Widget>[
              Expanded(
                  flex: 50,
                  child: Container(
                      child: Text('D'), color: Colors.purple, height: 150)),
              Expanded(
                  flex: 50,
                  child: Container(
                      child: Text('E'), color: Colors.pink, height: 150)),
            ])
          ],
        ));
  }
}
