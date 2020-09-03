import 'package:flutter/material.dart';


class SamCategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (){

          },

          child: Image.network('https://www.alemshop.com.tm/images/category/3.jpg'),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text('category.name',textAlign: TextAlign.center,),
        ),
      ),

    );
  }
}
