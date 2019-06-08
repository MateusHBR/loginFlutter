import 'package:flutter/material.dart';
import 'package:login_flutter/inputLogin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[   
                           
                textField(
                  hint: "Usuário",
                  icon: Icons.account_box,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                ),
                textField(
                  hint: "Senha",
                  icon: Icons.lock,
                ),                
                buttonLogin(
                  textoBT: "Clique para Logar",
                ),                
            ],
          ),
        ),
      ),
    );
  }
}
