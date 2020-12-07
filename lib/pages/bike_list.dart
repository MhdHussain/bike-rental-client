import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/constants.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/cubit/auth_cubit.dart';
import 'package:bikes_rental_client/state_management/bike_list/bike_list_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:bikes_rental_client/widgets/action_button.dart';
import 'package:bikes_rental_client/widgets/failure_widget.dart';
import 'package:bikes_rental_client/widgets/no_data.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_localizations.dart';

class BikeListPage extends StatefulWidget {
  @override
  _BikeListPageState createState() => _BikeListPageState();
}

class _BikeListPageState extends State<BikeListPage> {
  bool isLoggedIn;

  @override
  void initState() {
    context.read<BikeListCubit>().loadBikes();
    getAuthStatus();
    super.initState();
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ThemeColors.primary,
        title: Text(translator.translate('app_title')),
      ),
      body:
          BlocConsumer<BikeListCubit, BikeListState>(builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          noData: () => NoData(
              message: translator.translate('no_bikes'),
              onClick: () {
                final bikeListCubit = context.read<BikeListCubit>();
                bikeListCubit.loadBikes();
              }),
          failure: (message) => FailureWidget(
            message: message,
            onClick: () {
              final bikeListCubit = context.read<BikeListCubit>();
              bikeListCubit.loadBikes();
            },
          ),
          loaded: (bikes) => SafeArea(
              // child: SingleChildScrollView(

              child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final bike = bikes[index];
              print(bike.photo.first.url);
              return _bikeCard(
                  bike: bike,
                  color: index % 2 == 0
                      ? ThemeColors.primary
                      : ThemeColors.primaryLight,
                  context: context);
            },
            itemCount: bikes.length,
          )),
        );
      }, listener: (context, state) {
        //TODO: implement booking functionality
        return null;
      }),
    );
  }

  Widget _bikeCard({Bike bike, Color color, BuildContext context}) {
    final translator = AppLocalizations.of(context);

    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.bikeDetail,
            arguments: BikeDetailArguments(bike: bike, bgColor: color));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        height: 400,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(bike.photo.first.url),
                    height: 200.0,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        bike.brand,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                      Text(
                        bike.description,
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
                        bike.price,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        translator.translate('sar_per_day'),
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
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).push(Routes.bikeDetail,
                        arguments:
                            BikeDetailArguments(bike: bike, bgColor: color));
                  },
                  child: Container(
                      width: 150,
                      child: Text(
                        translator.translate('details'),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Expanded(
                  child: Container(),
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      authenticated: (_) => ActionButton(context: context, 
                      text: translator.translate('book_now'), 
                      route: "Un implemented" , width: 150,),
                      unAuthenticated: (_) => ActionButton(context: context, 
                      text: translator.translate('login'), 
                      route: Routes.loginPage , width: 150,),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


