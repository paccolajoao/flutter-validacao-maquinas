import 'package:flutter/material.dart';
import 'package:validacao_maquina/pages/DetalhesPage.dart';


class CodigoPage extends StatefulWidget {
  @override
  _CodigoPageState createState() => _CodigoPageState();
}

class _CodigoPageState extends State<CodigoPage> {

  final DetalhesPage _detalhesPage = DetalhesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
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

            Padding(

              //Add padding around textfield
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  //Add th Hint text here.
                  labelText: "Insira o Código",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),

            Center(
                child:
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetalhesPage()),
                      );
                    },
                    child: new Icon(
                      Icons.send,
                      color: Colors.green,
                      size: 25.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(15.0),
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}
