import 'package:awesome_bdo_app/utils/constants.dart';
import 'package:awesome_bdo_app/utils/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bdo_app/utils/styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Styles styles = Styles();

    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade200,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '₱850,345.00',
                        style: styles.fontStyleMain,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Available Balance',
                    style: styles.fontStyleSub,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MenuCard(
                        icon: Icon(Icons.send),
                        label: 'Send',
                      ),
                      MenuCard(
                        icon: Icon(
                          Icons.receipt,
                          color: Colors.blue,
                        ),
                        label: 'Receive',
                      ),
                      MenuCard(
                        icon: Icon(Icons.access_alarm),
                        label: 'History',
                      ),
                      MenuCard(
                        icon: Icon(Icons.access_alarm),
                        label: 'Receive',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: BorderRadius.circular(30).topLeft,
                    topRight: BorderRadius.circular(30).topRight,
                  ),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
