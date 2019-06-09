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
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white12,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[     
              Column(
                children: <Widget>[    
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                    ) ,                         
                    textField(
                      hint: "Username",
                      icon: Icons.person,
                    ),
                    textField(
                      obscureText: true,
                      hint: "Password",
                      icon: Icons.lock,
                    ),     
                    TextoUtil(
                      textoUTIL: "Forgot password?"
                    ),                         
                    buttonLogin(
                      textoBT: "Sign in",
                      borderRadius: 30.0,
                      width: 300,
                    ), 
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
