import 'package:flutter/material.dart';

class ShowDialogBox {
  static Future dialogBoxes({
    required BuildContext context,
    required String alertTitle,
    required String alertMessage,
    required Function onPressYesButton,
    // required Function onPressNoButton,
    required String textOption1,
    required String textOption2,
  }) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              alertTitle,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(alertMessage,
                      style: const TextStyle(fontWeight: FontWeight.w400))
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text(textOption1,
                    style: const TextStyle(color: Colors.black, fontSize: 20)),
                onPressed: () {
                  onPressYesButton();
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text(textOption2,
                    style: const TextStyle(color: Colors.red, fontSize: 20)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
