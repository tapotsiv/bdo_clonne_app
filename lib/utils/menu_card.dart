import 'package:awesome_bdo_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bdo_app/utils/styles.dart';

class MenuCard extends StatelessWidget {
  MenuCard({this.icon, this.label});

  final String label;
  final Icon icon;

  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonTheme(
          minWidth: 50.0,
          height: 60.0,
          child: RaisedButton(
              elevation: 5.0,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: icon,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white),
              ),
              onPressed: () {}),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: styles.fontStyleSub,
        ),
      ],
    );
  }
}
