import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:validacao_maquina/pages/CodigoPage.dart';
import 'package:validacao_maquina/pages/DetalhesPage.dart';
import 'package:validacao_maquina/pages/InfoPage.dart';
import 'package:validacao_maquina/pages/ScanPage.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIndex = 0;

  final ScanPage _scanPage = ScanPage();
  final DetalhesPage _detalhesPage = DetalhesPage();
  final CodigoPage _codigoPage = CodigoPage();
  final InfoPage _infoPage = InfoPage();

  Widget _showPage = new CodigoPage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _codigoPage;
        break;
      case 1:
        return _scanPage;
        break;
      case 2:
        return _infoPage;
        break;
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var _textFieldController;

    return MaterialApp(
        theme: ThemeData(
            backgroundColor: Colors.green,
            primaryColor: Colors.white,
            hintColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.green,
              key: _bottomNavigationKey,
              items: <Widget>[
                Icon(Icons.text_format, size: 30),
                Icon(Icons.camera_alt, size: 30),
                Icon(Icons.info_outline, size: 30),
              ],
              onTap: (int tappedIndex) {
                setState(() {
                  _showPage = _pageChooser(tappedIndex);
                });
              },
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  _createHeader(),
                  _createDrawerItem(icon: Icons.camera_alt, text: 'QR Code',),
                  _createDrawerItem(icon: Icons.text_format, text: 'Código',),
                  Divider(),
                  _createDrawerItem(
                      icon: Icons.check, text: 'Atualizar Informações'),
                  _createDrawerItem(icon: Icons.help, text: 'Ajuda'),
                  _createDrawerItem(icon: Icons.phone, text: 'Contato'),
                  Divider(),
                  _createDrawerItem(
                      icon: Icons.bug_report, text: 'Reporte um Erro'),
                  ListTile(
                    title: Text('Versão 1.0.0'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  color: Colors.green,
                  child: _showPage,
                )
              ],
            )
        )

    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logox.png'),

          )
      ),
    );
  }

}