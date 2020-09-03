import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,
                color: Colors.black,
                  size: 30.0,
                ),
                contentPadding:
                  EdgeInsets.only(left: 15,top: 15.0),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.blue,

                )
              ),
            ),
          ),
        )
    );
  }
}
