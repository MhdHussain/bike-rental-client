import 'package:ars_progress_dialog/ars_progress_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/constants.dart';
import 'package:bikes_rental_client/models/rental/rental.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/cubit/auth_cubit.dart';
import 'package:bikes_rental_client/state_management/rentals/cubit/rental_list_cubit.dart';
import 'package:bikes_rental_client/state_management/rentals/cubit/return_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:bikes_rental_client/widgets/action_button.dart';
import 'package:bikes_rental_client/widgets/failure_widget.dart';
import 'package:bikes_rental_client/widgets/no_data.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RentedList extends StatefulWidget {
  @override
  _RentedListState createState() => _RentedListState();
}

class _RentedListState extends State<RentedList> {
  @override
  void initState() {
    context.read<RentalListCubit>().getRentedBikes();
    context.read<AuthCubit>().getAuthStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    final progressDialog = ArsProgressDialog(
      context,
      blur: 2,
      backgroundColor: Color(0x33000000),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
          image: AssetImage('assets/white-waves.png'),
          fit: BoxFit.cover,
        ),
        iconTheme: IconThemeData(color: ThemeColors.primary),
        elevation: 0,
      ),
      body: BlocListener<ReturnCubit, ReturnState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => progressDialog.dismiss(),
            returning: () => progressDialog.show(),
            success: () {
              Flushbar(
                flushbarPosition: FlushbarPosition.TOP,
                title: translator.translate('success'),
                message: translator.translate('return_success'),
                icon: Icon(Icons.check, color: Colors.white),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
              ).show(context).then((_) {
                progressDialog.dismiss();
                context.read<RentalListCubit>().getRentedBikes();
              });
            },
            failure: (message) {
              Flushbar(
                flushbarPosition: FlushbarPosition.TOP,
                title: translator.translate('error'),
                message: translator.translate(message),
                icon: Icon(Icons.error, color: Colors.white),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 3),
              ).show(context).then((_) {
                progressDialog.dismiss();

              });
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/white-waves.png'), fit: BoxFit.cover),
          ),
          child: BlocBuilder<RentalListCubit, RentalListState>(
            builder: (context, state) {
              return state.when(
                initial: () => Container(),
                loading: () => Center(child: CircularProgressIndicator()),
                loaded: (rentals) => ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final rental = rentals[index];

                    return _rentalCard(rental: rental, context: context);
                  },
                  itemCount: rentals.length,
                ),
                noData: () => Center(
                  child: NoData(
                      message: translator.translate('no_rentals'),
                      onClick: () =>
                          context.read<RentalListCubit>().getRentedBikes()),
                ),
                failure: (message) => FailureWidget(
                  message: message,
                  onClick: () {
                    final bikeListCubit = context.read<RentalListCubit>();
                    bikeListCubit.getRentedBikes();
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Color getColorBasedOnStatus(String status) {
    if (status == Constants.PENDING) {
      return ThemeColors.grey_60;
    } else if (status == Constants.RENTED) {
      return ThemeColors.primaryLight;
    } else {
      return Colors.red[400];
    }
  }

  bool isRented(String status) {
    return status == Constants.RENTED;
  }

  Widget _rentalCard({Rental rental, BuildContext context}) {
    final translator = AppLocalizations.of(context);

    Color color = getColorBasedOnStatus(rental.status);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          color: color.withOpacity(0.7),
          borderRadius: BorderRadius.circular(50)),
      height: 150,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      rental.quantity.toString() + " " + rental.bike.brand + " " + translator.translate('bikes'),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    ),
                    Text(
                      rental.status,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    )
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      rental.amount,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      translator.translate('sar'),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Text(
                  rental.period + " " + translator.translate('days'),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              isRented(rental.status)
                  ? BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (_) => Container(),
                          authenticated: (_) => ActionButton(
                            context: context,
                            text: translator.translate('return'),
                            onClick: () {
                              rent(context, rental);
                            },
                            width: 150,
                          ),
                          unAuthenticated: (_) => ActionButton(
                            context: context,
                            text: translator.translate('login'),
                            onClick: () => ExtendedNavigator.of(context)
                                .push(Routes.loginPage),
                            width: 150,
                          ),
                        );
                      },
                    )
                  : Container()
            ],
          )
        ],
      ),
    );
  }

  void rent(BuildContext context, Rental rental) {
    final returnCubit = context.bloc<ReturnCubit>();

    returnCubit.returnBike(rental: rental);
  }
}
