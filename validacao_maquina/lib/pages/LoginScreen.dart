import 'package:flutter/material.dart';
import 'package:validacao_maquina/pages/HomeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextStyle style = TextStyle(fontFamily: 'WorkSans', fontSize: 16.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      cursorColor: Colors.indigo,
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
        ),
        //Add th Hint text here.
        labelText: "Email",
        labelStyle: TextStyle(color: Colors.indigo),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
        ),
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      cursorColor: Colors.indigo,
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 16.0,
      ) ,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
        ),
        //Add th Hint text here.
        labelText: "Senha",
        labelStyle: TextStyle(color: Colors.indigo),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.indigo, width: 2.0),
        ),
      ),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.indigo,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 100.0,
                          child: Image.asset(
                            "assets/images/logox.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 45.0),
                        emailField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(
                          height: 35.0,
                        ),
                        loginButon,
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );

  }
}
