import 'package:alemshop/screens/login_and_regis/cons.dart';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  final Function sahCals;
  RegPage(this.sahCals);
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  bool _isHidden = true;


  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:    Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.orange[300],
                    Colors.orange[400],
                    Colors.orange[200],
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1, Text("HOS GELDINIZ", style: TextStyle(color: Colors.white, fontSize: 40),)),
                    SizedBox(height: 5,),
                    FadeAnimation(1.3, Text("AGZA BOLUN!", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50,),
                          FadeAnimation(1.4, Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                    color: Colors.orange[600],
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        hintText: "Adynyz",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.person,color: Colors.orange)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        hintText: "Familyanyz",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.person,color: Colors.orange,)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        hintText: "Telefon belginiz",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.phone,color: Colors.orange,)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Passaword",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.lock,color: Colors.orange),
                                        suffixIcon:IconButton(
                                          onPressed: _toggleVisibility,
                                          icon: _isHidden ? Icon(Icons.visibility_off,color: Colors.orange):
                                          Icon(Icons.visibility,color: Colors.orange),
                                        ),
                                      ),
                                      obscureText: _isHidden
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height:10),
                          FlatButton(child:
                          FadeAnimation(1.5,
                            Text("On agza bolan bolsanyz su hata basyn!",
                              style: TextStyle(color: Colors.grey),

                            ),
                          ),
                            onPressed: (){
                              widget.sahCals();
                            },
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(1.6, Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[300]
                            ),
                            child: Center(
                              child: FlatButton(
                                child: Text(
                                  "Agza bolun", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                onPressed: (){
                                  widget.sahCals();
                                },
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
