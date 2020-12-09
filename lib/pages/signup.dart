import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/signup_form/cubit/signup_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart' hide Routes;
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  TextEditingController _email = new TextEditingController();

  TextEditingController _password = new TextEditingController();

  TextEditingController _name = new TextEditingController();

  TextEditingController _phoneNumber = new TextEditingController();

  bool _isEmailValid() {
    return _email.text.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_email.text);
  }

  bool _isPasswordValid() {
    return _password.text.isNotEmpty;
  }

  bool _isNameValid() {
    return _name.text.isNotEmpty;
  }

  bool _isPhoneNumberValid() {
    return _phoneNumber.text.startsWith("05") && _phoneNumber.text.length == 10;
  }

  bool _isValid() {
    return _isNameValid() &&
        _isEmailValid() &&
        _isPasswordValid() &&
        _isPhoneNumberValid();
  }

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    return new Scaffold(
      backgroundColor: ThemeColors.primary,
      // appBar:
      //     PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      body: ListView(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
                SizedBox(height: 15),
                Center(
                  child: BlocConsumer<SignupCubit, SignupState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          orElse: () => Container(),
                          signingUp: () => Container(
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
                  controller: _name,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: translator.translate('name'),
                    labelStyle: TextStyle(color: Colors.blueGrey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 25),
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
                SizedBox(height: 25),
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
                SizedBox(height: 25),
                TextField(
                  controller: _phoneNumber,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: translator.translate('phone_number'),
                    labelStyle: TextStyle(color: Colors.blueGrey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[400], width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey[400], width: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: FlatButton(
                    child: Text(
                      translator.translate('signup'),
                      style: TextStyle(color: Colors.black),
                    ),
                    color: ThemeColors.accentDark,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20)),
                    onPressed: () {
                      if (!_isValid()) {
                        var errorMsg = "";

                        if (!_isNameValid()) {
                          errorMsg += "\n" + translator.translate('invalid_name');
                        }
                        if (!_isEmailValid()) {
                          errorMsg += "\n" + translator.translate('invalid_email');
                        }
                        if (!_isPasswordValid()) {
                          errorMsg += "\n" + translator.translate('invalid_password');
                        }
                        if (!_isPhoneNumberValid()) {
                          errorMsg +=
                              "\n" + translator.translate('invalid_phone_number');
                        }
                        Flushbar(
                          flushbarPosition: FlushbarPosition.TOP,
                          title: translator.translate('error'),
                          message: errorMsg,
                          icon: Icon(Icons.error_outline),
                          duration: Duration(seconds: 3),
                          backgroundColor: Colors.red,
                        ).show(context);
                      } else {
                        signUp(context, _name.text, _email.text, _password.text,
                            _phoneNumber.text);
                      }
                    },
                  ),
                ),
                Spacer(),
              ],
            ),
         
       
    );
  }

  void signUp(BuildContext context, name, email, password, phoneNumber) {
    final authCubit = context.bloc<SignupCubit>();

    authCubit.signup(
        name: name, email: email, password: password, phoneNumber: phoneNumber);
  }
}
