import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/utils/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';

class BikeBookingDialog extends StatefulWidget {
  final Bike bike;
  const BikeBookingDialog({
    Key key,
    this.bike,
  }) : super(key: key);

  @override
  BikeBookingDialogState createState() => new BikeBookingDialogState();
}

class BikeBookingDialogState extends State<BikeBookingDialog> {
  int bikeCount = 1;

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
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      child: Text(
                        translator.translate('book_now'),
                        style: TextStyle(color: Colors.white),
                      ),
                      color: ThemeColors.primaryLight,
                      onPressed: () {
                        // Toast.show("FOLLOW clicked", context);
                      },
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text(bikeCount.toString(),
                                  style: CustomText.title(context).copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              // Container(height: 5),
                              // Text("Following", style: MyText.medium(context).copyWith(color: MyColors.grey_20))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0)),
                                child: Icon(Icons.add),
                                color: ThemeColors.primaryLight,
                                onPressed: () {
                                  if(bikeCount < widget.bike.quantity){
                                    setState(() {
                                    bikeCount = bikeCount + 1;
                                    
                                  });
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
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
}
