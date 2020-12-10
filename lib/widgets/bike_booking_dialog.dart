import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/state_management/bike_list/rent/cubit/rent_cubit.dart';
import 'package:bikes_rental_client/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';

class BikeBookingDialog extends StatefulWidget {
  Bike bike;
  BikeBookingDialog({
    Key key,
    this.bike,
  }) : super(key: key);

  @override
  BikeBookingDialogState createState() => new BikeBookingDialogState();
}

class BikeBookingDialogState extends State<BikeBookingDialog> {
  int bikeCount = 1;
  int dayCount = 1;
  double totalPrice = 0.0;
  double unitPrice = 0.0;

  @override
  void initState() {
    totalPrice = double.parse(widget.bike.price);
    unitPrice = double.parse(widget.bike.price);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: ThemeColors.primaryDark,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: ThemeColors.grey_20,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Container(height: 20),
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.black.withOpacity(0.5),
                child: Icon(
                  Icons.electric_bike,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(widget.bike.brand,
                        textAlign: TextAlign.center,
                        style: CustomText.title(context)
                            .copyWith(color: Colors.white)),
                    Container(height: 5),
                    Text(
                        translator.translate('available_bikes') +
                            widget.bike.quantity.toString() +
                            " " +
                            translator.translate('bikes'),
                        textAlign: TextAlign.center,
                        style: CustomText.subhead(context)
                            .copyWith(color: ThemeColors.grey_20)),
                    Container(height: 20),
                    Text(
                      translator.translate('total_price') +
                          " " +
                          totalPrice.toString() +
                          " " +
                          translator.translate('sar'),
                      style: TextStyle(color: ThemeColors.primaryLight),
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //  Text(translator.translate('bikes'),
                              //           style: TextStyle(color: Colors.white)),
                              IconButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (bikeCount < widget.bike.quantity) {
                                    setState(() {
                                      bikeCount = bikeCount + 1;
                                      totalPrice =
                                          bikeCount * dayCount * unitPrice;
                                    });
                                  }
                                },
                              ),
                              IconButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (bikeCount < widget.bike.quantity) {
                                    if (bikeCount > 1) {
                                      setState(() {
                                        bikeCount = bikeCount - 1;
                                        totalPrice =
                                            bikeCount * dayCount * unitPrice;
                                      });
                                    }
                                  }
                                },
                              ),
                              Text(
                                  bikeCount.toString() +
                                      " " +
                                      translator.translate('bikes'),
                                  style: CustomText.title(context).copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),

                                icon: Icon(Icons.add, color: Colors.white),

                                // color: ThemeColors.primaryLight,
                                onPressed: () {
                                  setState(() {
                                    dayCount = dayCount + 1;
                                    totalPrice =
                                        bikeCount * dayCount * unitPrice;
                                  });
                                },
                              ),
                              IconButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                icon: Icon(Icons.remove, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    if (dayCount > 1) {
                                      dayCount = dayCount - 1;
                                      totalPrice =
                                          bikeCount * dayCount * unitPrice;
                                    }
                                  });
                                },
                              ),
                              Text(
                                  dayCount.toString() +
                                      " " +
                                      translator.translate('days'),
                                  style: CustomText.title(context).copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      child: Text(
                        translator.translate('book_now'),
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red[300],
                      onPressed: () {
                        rent(context, widget.bike, bikeCount, dayCount);
                        
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Container(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void rent(BuildContext context, Bike bike, int count, int period) {
    final rentCubit = context.bloc<RentCubit>();

    rentCubit.rentBike(bike: bike, count: count, period: period);
  }
}
