import 'package:alemshop/screens/category_screen/components/category_item.dart';
import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
 final Function sahCals;
  CategoryGridView({this.sahCals});
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: 2,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx,i)=>CategoryItem(sahCals),
    );
  }
}
