import 'package:awesome_bdo_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bdo_app/utils/styles.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Styles styles = Styles();

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade600,
                Colors.red.shade200,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/bdo_logo.png'),
                width: width * 0.7,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: width * 0.85,
                child: Column(
                  children: <Widget>[
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              FlatButton(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.35, vertical: 15.0),
                disabledColor: Colors.grey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Forgot Password',
                      style: styles.fontStyleSub,
                    ),
                    Text(
                      'Register',
                      style: styles.fontStyleSub,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
