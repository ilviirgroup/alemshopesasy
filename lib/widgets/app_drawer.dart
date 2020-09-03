import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
