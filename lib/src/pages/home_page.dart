import 'package:flutter/material.dart';
import 'package:flutter_vscode2/src/pages/alert_page.dart';
import 'package:flutter_vscode2/src/providers/menu_provider.dart';
import 'package:flutter_vscode2/src/utils/icono_string_util.dart';
 
class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),

          );
  }

  Widget _lista() 
  {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
      children: _crearListaItems(snapshot.data, context),
          );
      },
      );
      
  }
      
  List<Widget> _crearListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones=[];
    data.forEach((opt){
      final widgettemp=ListTile(
                title: Text(opt['texto']),
                leading: getIcon(opt['icon']),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                onTap: (){
                  Navigator.pushNamed(context, opt['ruta']);
                  /*
                 final route=MaterialPageRoute(
                   builder: (context){
                     return AlertPage();
                   }

                   );
                  Navigator.push(context, route);
                  */
          
             },
      );
      opciones..add(widgettemp)
              ..add(Divider());
    });
return opciones;
  }
}