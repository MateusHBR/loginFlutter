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
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.purple,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.purple[50])),
          fillColor: Colors.purple[100],
          filled: true,
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
  final double borderRadius;
  final double width;
  final IconData icon;
  final Color color;
  const buttonLogin(
      {Key key,
      this.textoBT = "",
      this.borderRadius = 0.0,
      this.width = 100,
      this.icon,
      this.color = Colors.purple})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: RaisedButton(
          elevation: 3,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Text(
            textoBT,
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
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
        textAlign: TextAlign.end,
        style: TextStyle(color: Colors.purple, fontSize: 11.0),
      ),
    );
  }
}

class Imagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('src/img.png');
    var image = new Image(image: assetsImage, width: 120, height: 120);
    return Container(
      child: image,
    );
  }
}
