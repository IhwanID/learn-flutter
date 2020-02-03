import 'package:flutter/material.dart';
import 'package:time_tracker/widget/sign_in_button.dart';

class SocialSignInButton extends SignInButton {
  SocialSignInButton({
    @required String imagePath,
    Color textColor,
    @required String text,
    VoidCallback onPressed,
    Color color,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(imagePath),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(opacity: 0.0, child: Image.asset(imagePath)),
            ],
          ),
    onPressed: onPressed,
    color: color
        );
}
