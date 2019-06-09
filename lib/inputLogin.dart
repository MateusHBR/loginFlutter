import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class textField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscureText;
  const textField(
      {Key key,
      this.hint = "",
      this.icon = Icons.security,
      this.obscureText = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.purple[100],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Colors.purple,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Colors.purple[50])),
          prefixIcon: Icon(
            icon,
            color: Colors.purple,
          ),
          labelText: (hint),
          labelStyle: TextStyle(
              fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class buttonLogin extends StatelessWidget {
  final String textoBT;

  const buttonLogin({Key key, this.textoBT = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: RaisedButton(
              color: Colors.purple,
              child: Text(
                textoBT,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class TextoUtil extends StatelessWidget {
  final String textoUTIL;

  const TextoUtil({Key key, this.textoUTIL}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Text(
        "${textoUTIL}",
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.purple),
      ),
    );
  }
}
