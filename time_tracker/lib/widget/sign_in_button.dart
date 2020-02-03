import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {

  SignInButton({this.text, this.color,this.textColor, this.onPressed, this.height: 50.0});
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 15.0),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
      ),
    );
  }
}
