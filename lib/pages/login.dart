import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[900],
      appBar:
          PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: double.infinity,
        height: double.infinity,
        
            child: ListView(
              
              children: <Widget>[
              Spacer(),
              Container(
                child: Icon(
                  Icons.electric_bike,
                  size: 200,
                  color: ThemeColors.accentDark,
                ),
                width: 200,
                height: 200,
              ),
              Container(height: 15),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: translator.translate('email'),
                  labelStyle: TextStyle(color: Colors.blueGrey[400]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                  ),
                ),
              ),
              Container(height: 25),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: translator.translate('password'),
                  labelStyle: TextStyle(color: Colors.blueGrey[400]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              Container(
                width: double.infinity,
                height: 40,
                child: FlatButton(
                  child: Text(
                    translator.translate('login'),
                    style: TextStyle(color: Colors.black),
                  ),
                  color: ThemeColors.accentDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text(
                    translator.translate('signup'),
                    style: TextStyle(color: ThemeColors.accentDark),
                  ),
                  color: Colors.transparent,
                  onPressed: () {},
                ),
              ),
              Spacer(),
            ],
            
          ),
        ),
      
    );
  }
}
