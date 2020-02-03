import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  SignInButton(
      {this.color,
      this.onPressed,
      this.height: 50.0,
      this.child});
  final Color color;
  final VoidCallback onPressed;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        onPressed: onPressed,
        child: child,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
      ),
    );
  }
}
