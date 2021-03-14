import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {
  //atributos
  final String marca;
  final String modelo;
  final String foto;

  //construtor
  CarroWidget(this.marca, this.modelo, this.foto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 100,
      //color: Colors.blue[100],

      //margens
      //margin: EdgeInsets.all(30),
      //margin: EdgeInsets.symmetric(horizontal: 50),
      //margin: EdgeInsets.symmetric(vertical: 50),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),

      //espaçamento
      padding: EdgeInsets.all(20),

      //borda
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.grey[100]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      child: Center(
          child: Column(
            children: [
              Text(marca, style: 
              TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              Text(modelo, style: 
              TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
              Image.asset(foto),
              
            ],
          )),
    );
  }
}
