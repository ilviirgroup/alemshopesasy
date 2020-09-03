import 'package:alemshop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()=>runApp(AlemShop());

class AlemShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: Colors.black,
        home: HomeScreen(),
      ),
    );
  }
}
