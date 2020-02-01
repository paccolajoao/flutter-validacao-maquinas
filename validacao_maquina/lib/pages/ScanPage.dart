import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:validacao_maquina/pages/DetalhesPage.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String code = "";
  final DetalhesPage _detalhesPage = DetalhesPage();

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Center (
            child: Image.asset("assets/images/qrcode.jpg"),

          ),


          Center(
              child:
              Padding(
                padding: EdgeInsets.all(30.0),
                child: new RawMaterialButton(
                  onPressed: () => scanQrCode(),
                  child: new Icon(
                    Icons.photo_camera,
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
    );
  }



  scanQrCode () async{

    try {

      final result = await BarcodeScanner.scan();

      setState(() {
        code = result;

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetalhesPage()),
        );

      });

    } catch(e) {
      print(e);
    }


  }

}
