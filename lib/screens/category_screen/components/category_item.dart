import 'package:alemshop/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Function sahCals;
  CategoryItem(this.sahCals);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(category: false,)));

          },

          child: Image.network('https://www.alemshop.com.tm/images/category/2.jpg'),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text('category.name',textAlign: TextAlign.center,),
        ),
      ),

    );
  }
}
