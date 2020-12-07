import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/signin_form/cubit/signin_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    return new Scaffold(
      key: _scaffoldKey,
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
            Center(
              child: BlocConsumer<SigninCubit, SigninState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      signingIn: () => Container(
                          margin: EdgeInsets.all(20),
                          child: Center(child: CircularProgressIndicator())));
                },
                listener: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      success: () => ExtendedNavigator.of(context)
                          .pushAndRemoveUntil(
                              Routes.bikeListPage, (route) => false),
                      failed: (message) {
                        return Flushbar(
                          flushbarPosition: FlushbarPosition.TOP,
                          duration: Duration(seconds: 3),
                          title: translator.translate('error'),
                          message: translator.translate(message),
                          icon: Icon(Icons.error_outline),
                          backgroundColor: Colors.red,
                        ).show(context);
                      });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
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
              controller: _password,
              keyboardType: TextInputType.text,
              obscureText: true,
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
                onPressed: () {
                  signIn(context, _email.text, _password.text);
                },
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

  void signIn(BuildContext context, email, password) {
    final authCubit = context.bloc<SigninCubit>();

    authCubit.login(email, password);
  }
}
