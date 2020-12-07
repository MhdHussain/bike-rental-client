import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
    @required this.context,
    @required this.text,
    @required this.route,
    @required this.width,
  }) : super(key: key);

  final BuildContext context;
  final String text;
  final String route;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(route);
      },
      child: Container(
        height: 70,
        width: width,
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
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_right,
            )
          ],
        ),
      ),
    );
  }
}
