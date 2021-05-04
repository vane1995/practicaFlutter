import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AVATAR PAGE'),
        actions: [


          CircleAvatar(
            backgroundImage: NetworkImage('https://image.freepik.com/vector-gratis/diseno-ilustracion-vector-personaje-avatar-mujer-joven_24877-18513.jpg'),
            radius: 30.0,
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('VG'),
              backgroundColor: Colors.yellow,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj2Nzy5Rg2i7cYxcF1Cxs2b-hbZoCWXrsG1A&usqp=CAU'),
           placeholder:AssetImage('assets/jar-loading.gif'),
           fadeInDuration: Duration(milliseconds: 200),
           ),
        ),
    );
  }
}
