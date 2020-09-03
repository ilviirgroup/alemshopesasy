import 'package:flutter/material.dart';

class SamCategoryGridView extends StatelessWidget {
  final Function sahCals;
  SamCategoryGridView({this.sahCals});
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
      itemBuilder: (ctx,i)=>SamCategoryGridView(sahCals: sahCals,),
    );
  }
}
