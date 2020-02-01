import 'package:flutter/material.dart';
import 'package:validacao_maquina/pages/CodigoPage.dart';
import 'designCourseAppTheme.dart';

class DetalhesPage extends StatefulWidget {
  @override
  _DetalhesPageState createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  final infoHeight = 364.0;
  var opacity1 = 0.0;
  var opacity2 = 0.0;
  var opacity3 = 0.0;

  //provide the same scrollController for list and draggableScrollbar
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {

    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        Navigator.pop(context);
      },
    );

    AlertDialog alerta = AlertDialog(
      content: Text("Pontuação: 75pts. Máquina inapta para o serviço!"),
      title: Text("Questionário Finalizado"),
      actions: [
        okButton,
      ],
    );

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var padding = MediaQuery.of(context).padding;
    double height1 = height - padding.top - padding.bottom;

    final tempHight = (MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 2.0) +
        24.0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "COLHEDEIRA - XX23",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {

          return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(

                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[

                          SizedBox(
                            height: height1, // fixed height
                            child: ListView(
                              shrinkWrap: true,
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: AspectRatio(
                                    aspectRatio: 1.5,
                                    child: Image.asset(
                                        'assets/images/colhedeira.jpg'
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 50.0
                                  ),
                                  child: Container (
                                    decoration: BoxDecoration(
                                      color: DesignCourseAppTheme.nearlyWhite,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(32.0),
                                          topRight: Radius.circular(32.0)),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: DesignCourseAppTheme.grey.withOpacity(0.2),
                                            offset: Offset(1.1, 1.1),
                                            blurRadius: 10.0),
                                      ],
                                    ),
                                    child: Column (
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "LENÇÓIS PAULISTA",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  letterSpacing: 0.50,
                                                  color: Colors.black54,

                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8, bottom: 8, top: 0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "CÓDIGO: XX23",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  letterSpacing: 0.40,
                                                  color: Colors.black,

                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        AnimatedOpacity(
                                          duration: Duration(milliseconds: 500),
                                          opacity: 1,
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(9.0),
                                              child: Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[

                                                    getTimeBoxUI("10/2017", "AQUISIÇÃO")
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        //ExpandableListView(),

                                        ConstroiPergunta(foo: "Está com todos os equipamentos de segurança (EPIs) e CNH compatível?"),
                                        ConstroiPergunta(foo: "Equipamento opera sem ruídos estranhos(anormais)?"),
                                        ConstroiPergunta(foo: "Equipamento e o ambiente de trabalho está limpo, organizado e bem conservado ?"),
                                        ConstroiPergunta(foo: "Os extintores de incêndio estão com a carga e na validade correta?"),
                                        ConstroiPergunta(foo: "Motor está sem vazamento ( água e óleo diesel e lubrificantes) ?"),
                                        ConstroiPergunta(foo: "Nível do Óleo da caixa de quatro furo?"),
                                        ConstroiPergunta(foo: "Nível do óleo do motor?"),
                                        ConstroiPergunta(foo: "Mangueiras e abraçadeiras do sistema de admissão de ar e Óleo estão bem fixados ?"),
                                        ConstroiPergunta(foo: "Correias de acionamento (alternador, ar condicionado bomba d' água) estão bem tensionadas e em bom estado ?"),
                                        ConstroiPergunta(foo: "Nível do líquido do radiador e a tampa estão em boas condições?"),

                                        Padding (
                                          padding: EdgeInsets.all(20.0),
                                          child: Column(
                                            children: <Widget>[
                                              TextField(
                                                maxLines: 5,
                                                decoration: InputDecoration(
                                                  enabledBorder: const OutlineInputBorder(
                                                    // width: 0.0 produces a thin "hairline" border
                                                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                                  ),
                                                  //Add th Hint text here.
                                                  labelText: "Observações",
                                                  labelStyle: TextStyle(color: Colors.black),
                                                  border: OutlineInputBorder(
                                                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                                  ),
                                                ),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),


                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(25.0),
                                            child: Container(
                                              child: Ink(
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: CircleBorder(),
                                                ),
                                                child: IconButton(
                                                  icon: Icon(Icons.android),
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    print("filled background");
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ]
                )
            ),
          );
        },
      ),
      floatingActionButton: Transform.scale(
        scale: 1.0,
        child: FloatingActionButton.extended(
          onPressed: () {

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alerta;
              },
            );

          },
          label: Text('Vistoria Realizada',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 0.40,
                color: DesignCourseAppTheme.nearlyWhite,
              )),
          icon: Icon(Icons.check),
          backgroundColor: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: DesignCourseAppTheme.grey.withOpacity(0.2),
                offset: Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 12.0, bottom: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  text1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 0.30,
                    color: Colors.black,
                  ),
                ),
                Text(
                  txt2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    letterSpacing: 0.40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

class ConstroiPergunta extends StatefulWidget {

  final String foo;

  const ConstroiPergunta({Key key, this.foo}): super(key: key);

  @override
  _ConstroiPerguntaState createState() => _ConstroiPerguntaState(foo: this.foo);
}

class _ConstroiPerguntaState extends State<ConstroiPergunta> {

  String foo;

  _ConstroiPerguntaState({this.foo});

  @override
  Widget build(BuildContext context) {
    var isSwitched = false;
    double c_width = MediaQuery.of(context).size.width*0.7;
    return Center(
      child: Padding (
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Container (
              padding: const EdgeInsets.all(16.0),
              width: c_width,
              child: new Column (
                children: <Widget>[
                  new Text (foo, textAlign: TextAlign.left),
                ],
              ),
            ),

            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: Colors.red,
              activeColor: Colors.redAccent,
              inactiveTrackColor: Colors.green,
              inactiveThumbColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}




class ExpandableListView extends StatelessWidget {

  static final List<String> _listViewData = [
    "NP-23 PROTEÇÃO CONTRA INCÊNDIOS",
    "NR-35 TRABALHO EM ALTURA",
    "NR-10 SEGURANÇA EM INSTALAÇÕES E SERVIÇOS",
    "NR-33 SEGURANÇA E SAÚDE",
  ];

  static final List<String> _listViewData2 = [
    "01/02/2017 - ADMISSIONAL",
    "04/05/2018 - PERIÓDICO",
    "10/04/2019 - PERIÓDICO",
  ];

  int i = 0;

  List<ExpansionTile> _listOfExpansions = List<ExpansionTile>.generate(
      1,
          (i) => ExpansionTile(

        title: Text("Treinamentos Realizados",
            style: TextStyle(
                fontWeight: FontWeight.bold
            )),
        children: _listViewData
            .map((data) => ListTile(
          title: Text(
              data,
              style: TextStyle (
                color: Colors.red,
              )
          ),

          subtitle: Text("Realizado em: 10/01/2019 | Válido até: 10/10/2019 ",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )
          ),

        ))
            .toList(),
      ));

  List<ExpansionTile> _listOfExpansions2 = List<ExpansionTile>.generate(
      1,
          (i) => ExpansionTile(
        title: Text("Exames Realizados",
            style: TextStyle(
                fontWeight: FontWeight.bold
            )),
        children: _listViewData2
            .map((data) => ListTile(
          title: Text(
            data,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Válido até: 10/10/2019 ",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )),
        ))
            .toList(),
      ));


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Column (
          children: _listOfExpansions.map((expansionTile) => expansionTile).toList(),
        ),

        Column (
          children: _listOfExpansions2.map((expansionTile) => expansionTile).toList(),
        )

      ],

    );
  }

}

