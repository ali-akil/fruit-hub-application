import 'package:flutter/material.dart';

class CustomSnakbar {
  CustomSnakbar(
      {required BuildContext context,
      required String message,
      required Color color,
      required IconData icon}) {
    showSnakbar(context: context, message: message, icon: icon, color: color);
  }

  static showSnakbar(
      {required BuildContext context,
      required String message,
      required IconData icon,
      required Color color}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
                color: color,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(color: color, fontSize: 15),
                ),
              )
            ],
          )),
      backgroundColor: Colors.white,
    ));
  }
}
