import 'package:alemshop/screens/cart_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.orange[400],
    title: ColorizeAnimatedTextKit(
      repeatForever: true,
      text: [
        'ALEM',
        'SHOP',
      ],
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
    ),
    actions: [
      IconButton(icon: Icon(Icons.shopping_cart), color:Colors.white,
          onPressed:(){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
          })
    ],
  );
}

Drawer buildDrawer(){
  return Drawer(
    child:ListView(
      children: [
    DrawerHeader(
    child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ColorizeAnimatedTextKit(
          repeatForever: true,
          text: [
              "ALEM",
            "SHOPPING"
          ],
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            fontFamily: 'Quicksand',
          ),
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.yellow,
            Colors.red,
          ],
        ),
      ],
    ),
  ),
        ListTile(
          title: Text('Alem shoping'),
          leading: Icon(Icons.home),
        )
      ],
    ),
  );
}