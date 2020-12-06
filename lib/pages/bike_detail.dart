import 'package:bikes_rental_client/app_localizations.dart';
import 'package:flutter/material.dart';

import 'package:bikes_rental_client/models/bikes/bike.dart';

class BikeDetail extends StatefulWidget {
  final Bike bike;
  final Color bgColor;
  const BikeDetail({
    Key key,
    this.bike,
    this.bgColor,
  }) : super(key: key);

  @override
  _BikeDetailState createState() => _BikeDetailState();
}

class _BikeDetailState extends State<BikeDetail> {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.bgColor,
        elevation: 0,
      ),
      backgroundColor: widget.bgColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          _imgHeader(widget.bike.photo.first.url),
          _brandWidget(widget.bike.brand, widget.bike.description, widget.bgColor),
          _price(widget.bike.price , context),
          SizedBox(
            height: 50,
          ),
          _specifications(widget.bike),
          Expanded(
            child: Container(),
          ),
         
        ],
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

  Widget _brandWidget(String brand, String description, Color color) {
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
              Text(
                description,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: .5, color: Colors.white)),
            child: Icon(Icons.electric_bike)
          )
        ],
      ),
    );
  }

  Widget _price(String price , BuildContext context) {
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
        Container(
          width: 200,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(translator.translate('book_now'),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  )),
              Icon(Icons.arrow_right)
            ],
          ),
        )
      ],
    );
  }

  Widget _specifications(Bike bike) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _specification(bike.frontLight == "Yes" ? Icons.online_prediction : Icons.highlight_remove, "Front Light" , bike.frontLight),
        _specification(bike.rearLight == "Yes" ? Icons.power : Icons.power_off_outlined , "Rear Light",  bike.rearLight),
        _specification(bike.speedSensor == "Yes" ? Icons.speed_rounded : Icons.highlight_remove, "Speed Scensor",  bike.speedSensor)
      ],
    );
  }

  Widget _specification(
      IconData icon, String title, String value) {
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
