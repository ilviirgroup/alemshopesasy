import 'package:alemshop/screens/category_screen/components/category_grid_view.dart';
import 'package:alemshop/screens/category_screen/components/sam_category_grid_view.dart';
import 'package:alemshop/widgets/page_list_title.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool esasySahypa=true;
  List<Map<String,Object>> _sahypalar;
  void sahCals(){
    setState(() {
      esasySahypa=!esasySahypa;
    });
  }
  @override
  void initState(){
    super.initState();
    _sahypalar=[
     { 'sahypa':CategoryGridView(sahCals: sahCals),
     },
      {'sahypa':SamCategoryGridView(sahCals: sahCals)},
    ];
  }



  @override
  Widget build(BuildContext context) {
    return esasySahypa ?_sahypalar[0]['sahypa']:_sahypalar[1]['sahypa'];
  }
}
