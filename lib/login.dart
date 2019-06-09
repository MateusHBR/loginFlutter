import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          child: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: Imagem(),
                    ),
                    textField(
                      hint: "Username",
                      icon: Icons.person,
                    ),
                    textField(
                      obscureText: true,
                      hint: "Password",
                      icon: Icons.lock,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 209),
                      child: TextoUtil(textoUTIL: "Forgot password?"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                      child: buttonLogin(
                        icon: null,
                        textoBT: "Sign in !",
                        borderRadius: 30.0,
                        width: 321,
                      ),
                    ),
                    TextoUtil(
                      textoUTIL: "Login with",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Stack(children: <Widget>[
                              buttonLogin(
                                color: Colors.red,
                                textoBT: "Google",
                                borderRadius: 30.0,
                                width: 142.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30, top: 12),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.white, 
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            child: Stack(children: <Widget>[
                              buttonLogin(
                                color: Colors.blue,
                              textoBT: "Facebook",
                              borderRadius: 30.0,
                              width: 142.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30, top: 12),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.white, 
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
