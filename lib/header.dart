import 'package:flutter/material.dart';
import 'back_weather.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final button = new InkWell(
      child: new Container(
        margin: new EdgeInsets.only(top: 30.0, left: 20.0, right: 20),
        height: 50.0,
        width: 150.0,
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
                color: Color(0xFFf38b02),
                offset: new Offset(10.0, 10.0),
                blurRadius: 30.0)
          ],
          borderRadius: new BorderRadius.circular(30.0),
          color: Color(0xFFfeb800),
        ),
        child: new Center(
          child: new Text(
            "GO TO CALENDAR",
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new BackWheather(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top: 50.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "TUESDAY",
                  style: const TextStyle(
                    fontSize: 55.0,
                    color: Color(0xFFeba800),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
