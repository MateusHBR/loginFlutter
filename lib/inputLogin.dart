import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final String hint;
  final IconData icon;
  const textField({Key key, this.hint = "", this.icon = Icons.security})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.purple,
            ),
            hintText: (hint),
            hintStyle: TextStyle(
                fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple[50])),
          ),
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
                textAlign: TextAlign.center,
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
