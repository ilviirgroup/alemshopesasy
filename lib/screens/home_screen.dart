import 'package:alemshop/screens/login_and_regis/main_login.dart';
import 'package:alemshop/screens/category_screen/components/category_grid_view.dart';
import 'package:alemshop/screens/search_screen/app_HederDrawer.dart';
import 'package:alemshop/screens/search_screen/search_screen.dart';
import 'package:alemshop/screens/subcategory/supacategory_screen.dart';
import 'package:alemshop/widgets/app_drawer.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  final bool category;
  HomeScreen({this.category=true});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int _saylananIndex;
  List<Map<String,Object>> _sahypalar;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
    _saylananIndex=0;
    _sahypalar=[
      {
        'sahypa':widget.category? CategoryGridView():SubCategory(),
        'renk':Colors.deepOrange,
      },{
        'sahypa':Search(),
        'renk':Colors.deepOrange
      },{
        'sahypa':Text(''),
        'renk':Colors.deepOrange
      },{
        'sahypa':MainLoginPage(),
        'renk':Colors.deepOrange
      }
    ];
  }
  void sahCals(int index){
    setState(() {
      _saylananIndex=index;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context ),
        drawer:AppDrawer(),
        body:_sahypalar[_saylananIndex]['sahypa'],

        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            labelColor: Colors.orange,
            onTap:(index){
              sahCals(index);

            },

            controller: controller,
            indicatorColor:_sahypalar[_saylananIndex]['renk'],
            tabs: [

              Tab(icon: Icon(Icons.home,color:_saylananIndex==0?
                Colors.orange:Colors.orange),),
              Tab(icon: Icon(Icons.search,color:_saylananIndex==1?
              Colors.orange:Colors.orange),),
              Tab(icon: Icon(Icons.star,color:_saylananIndex==2?
              Colors.orange:Colors.orange),),
              Tab(icon: Icon(Icons.person,color:_saylananIndex==3?
              Colors.orange:Colors.orange),),
            ],
          ),
          ),

      ),
    );

  }
}
