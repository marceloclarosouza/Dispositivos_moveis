import 'package:flutter/material.dart';

import 'CarroWidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Carros',
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carros'),
          backgroundColor: Colors.deepOrange,
        ),
        
        body: GridView.count(
          crossAxisCount: 2,          
            children: [
              CarroWidget('Audi','Q8','lib/imagens/audi_q8.jpg'),
              CarroWidget('Audi','R8','lib/imagens/audi_r8.jpg'),
              CarroWidget('BMW','M2','lib/imagens/bmw_m2.jpg'),
              CarroWidget('Ferrari','488','lib/imagens/ferrari_488.jpg'),
              CarroWidget('Lamborghini','Huracan','lib/imagens/lamborguini_huracan.jpg'),
              CarroWidget('Lamborghini','Urus','lib/imagens/lamborguini_urus.jpg'),
              CarroWidget('Maserati','GTS','lib/imagens/maserati_gts.jpg'),              
            ],
          ),
        );
  }
}
