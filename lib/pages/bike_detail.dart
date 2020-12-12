import 'package:ars_progress_dialog/ars_progress_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/cubit/auth_cubit.dart';
import 'package:bikes_rental_client/state_management/bike_list/bike_list_cubit.dart';
import 'package:bikes_rental_client/state_management/bike_list/rent/cubit/rent_cubit.dart';
import 'package:bikes_rental_client/widgets/action_button.dart';
import 'package:bikes_rental_client/widgets/bike_booking_dialog.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class BikeDetail extends StatefulWidget {
  Bike bike;
  final Color bgColor;
  BikeDetail({
    Key key,
    this.bike,
    this.bgColor,
  }) : super(key: key);

  @override
  _BikeDetailState createState() => _BikeDetailState();
}

class _BikeDetailState extends State<BikeDetail> {
  bool isLoggedIn;

  @override
  void initState() {
    super.initState();
    getAuthStatus();
  }

  Future<void> getAuthStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      this.isLoggedIn = prefs.get(Constants.ACCESS_TOKEN_KEY) != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    final progressDialog = ArsProgressDialog(
      context,
      blur: 2,
      backgroundColor: Color(0x33000000),
    );

    return WillPopScope(
      onWillPop: () {
        // triggering reload of all bikes when popping to the main screen
        // to get updated list of rented bikes
        Navigator.of(context).pop();
        context.read<BikeListCubit>().loadBikes();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.bgColor,
          elevation: 0,
        ),
        backgroundColor: widget.bgColor,
        body: BlocListener<RentCubit, RentState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () => progressDialog.dismiss(),
                renting: () => progressDialog.show(),
                failure: (message) {
                  Flushbar(
                    title: translator.translate('error'),
                    message: translator.translate(message),
                    icon: Icon(Icons.error_outline, color: Colors.white),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 3),
                  ).show(context).then((_) => progressDialog.dismiss());
                },
                success: (newBike) {
                  setState(() {
                    widget.bike = widget.bike.copyWith(quantity : newBike.quantity);
                  });
                  Flushbar(
                    title: translator.translate('success'),
                    message: translator.translate('rental_success'),
                    icon: Icon(Icons.check, color: Colors.white),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 3),
                  ).show(context).then((_) {
                    progressDialog.dismiss();
                    // reload the page to show updated list
                    // this avoids showing false number of bikes
                    Navigator.of(context).pop();
                    if (widget.bike.quantity <= 0) {
                      Navigator.of(context).pop();
                    }
                    context.read<BikeListCubit>().loadBikes();
                    ExtendedNavigator.of(context).push(Routes.rentedList);
                  });
                });
          },
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              _imgHeader(widget.bike.photo.first.url),
              _brandWidget(widget.bike.brand, widget.bike.description,
                  widget.bike.height, widget.bgColor),
              _price(widget.bike.price, context),
              SizedBox(
                height: 50,
              ),
              _specifications(widget.bike),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imgHeader(String urlImg) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Image(
          image: NetworkImage(urlImg),
        ));
  }

  Widget _brandWidget(
      String brand, String description, double height, Color color) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                brand,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              Container(
                width: 200,
                child: Expanded(
                  child: Text(
                    description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: .5, color: Colors.white)),
              child: Column(
                children: [
                  Icon(
                    Icons.height,
                    color: Colors.white,
                  ),
                  Text(
                    height.toString(),
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                  Text(
                    "CM",
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget _price(String price, BuildContext context) {
    final translator = AppLocalizations.of(context);
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            children: <Widget>[
              Text(
                price,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                translator.translate('sar_per_day'),
                style: TextStyle(color: Colors.white30),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              authenticated: (_) => ActionButton(
                context: context,
                text: translator.translate('book_now'),
                onClick: () {
                  showDialog(
                      context: context,
                      child: BikeBookingDialog(
                        bike: widget.bike,
                      ));
                },
                width: 200,
              ),
              unAuthenticated: (_) => ActionButton(
                context: context,
                text: translator.translate('login'),
                onClick: () =>
                    ExtendedNavigator.of(context).push(Routes.loginPage),
                width: 200,
              ),
            );
          },
        )
      ],
    );
  }

  Widget _specifications(Bike bike) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _specification(
            bike.frontLight == "Yes"
                ? Icons.online_prediction
                : Icons.highlight_remove,
            "Front Light",
            bike.frontLight),
        _specification(
            bike.rearLight == "Yes" ? Icons.power : Icons.power_off_outlined,
            "Rear Light",
            bike.rearLight),
        _specification(
            bike.speedSensor == "Yes"
                ? Icons.speed_rounded
                : Icons.highlight_remove,
            "Speed Scensor",
            bike.speedSensor)
      ],
    );
  }

  Widget _specification(IconData icon, String title, String value) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(
              color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
