import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {  
  final opciones=['UNO','DOS','TRES','CUATRO','CINCO'];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Componentes Temp'),
  ),
  body: ListView(
    children: _crearItemsCorta()
      ),
    ); 
  }

  List<Widget> _crearItems(){

    List<Widget> lista= new List<Widget>();
    for (String opt in opciones) {
      final tempWidget= ListTile(
        title: Text(opt),
      );

      /*lista.add(tempWidget);
       lista.add(Divider());*/
       
       //LLAMADO EN CASCADA
       lista..add(tempWidget)
            ..add(Divider());

    }
    return lista;
  }
 
 
 
  List<Widget> _crearItemsCorta()
    {
      var widges=opciones.map((item){
        return Column(
          children: [
            ListTile(
              title: Text(item + '!'),
              subtitle: Text('informacion'),
              leading: Icon(Icons.access_alarms_rounded),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider()
          ],
        );
      }).toList();
      return widges;
    }

}