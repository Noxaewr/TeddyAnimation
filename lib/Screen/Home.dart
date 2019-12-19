import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return  Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.0, 1.0],
          colors: [
            Color.fromRGBO(170, 207, 211, 1.0),
            Color.fromRGBO(93, 142, 155, 1.0),
          ],
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: devicePadding.top + 20.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      spreadRadius: 2.0, 
                      color: Colors.white.withOpacity(0.5),
                      offset: new Offset(5.0, 5.0),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}