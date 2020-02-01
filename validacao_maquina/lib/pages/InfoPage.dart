import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Center(
              child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Image.asset('assets/images/logo.png', width: 80.0)
              )
          ),


          Center(
              child:
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "DESENVOLVIDO POR SISCONNECTION",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.5
                  ),
                ),

              )
          ),

          Center(
              child:
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "www.sisconnection.com.br",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.5
                  ),
                ),

              )
          ),
        ],
      ),
    );
  }
}
