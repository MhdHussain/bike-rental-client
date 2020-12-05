import 'package:bikes_rental_client/state_management/cubit/bike_list_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:bikes_rental_client/widgets/failure_widget.dart';
import 'package:bikes_rental_client/widgets/no_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_localizations.dart';

class BikeListPage extends StatefulWidget {
  @override
  _BikeListPageState createState() => _BikeListPageState();
}

class _BikeListPageState extends State<BikeListPage> {
  @override
  void initState() {
    context.read<BikeListCubit>().loadBikes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ThemeColors.primary,
        title: Text(translator.translate('app_title')  ),
        
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
                urlImg: bike.photo.first.url,
                brand: bike.brand,
                description: bike.description,
                color: index % 2 == 0 ? ThemeColors.primary : ThemeColors.primaryLight,
                price: bike.price,
                context: context
              );
            },
            itemCount: bikes.length,
          )
              // _cartaCoche(
              //     'assets/car2.jpg', "Car 2", Color(0xff9d9d9d), context),
              // _cartaCoche(
              //     'assets/car3.jpg', "Car 3", Color(0xff9d9d9d), context),
              // _cartaCoche(
              //     'assets/car4.jpg', "Car 4", Color(0xff9d9d9d), context),
              // _cartaCoche(
              //     'assets/car5.jpg', "Car 5", Color(0xff9d9d9d), context),

              ),

          // ),
        );
      }, listener: (context, state) {
        return null;
      }),
    );
  }

  Widget _bikeCard(
      {String urlImg,
      String brand,
      String description,
      String price,
      Color color,
      BuildContext context}) {


    final translator = AppLocalizations.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: ClipRRect(
                
                borderRadius: BorderRadius.circular(20),
                child: Image(image: NetworkImage(urlImg), height: 200.0, )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      brand,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    ),
                    Text(
                      description,
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
                      price,
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
                  Navigator.pushNamed(context, 'detail', arguments: {
                    'color': color,
                    'img': urlImg,
                    "nombre": brand
                  });
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
              Container(
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      translator.translate('book_now'),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_right,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
