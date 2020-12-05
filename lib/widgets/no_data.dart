
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/utils/custom_text.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  const NoData({Key key, @required this.message, @required this.onClick})
      : super(key: key);

  final String message;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 100.0, right: 30, left: 30),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.electric_bike, size: 100, color: Colors.grey[300]),
              Container(height: 10),
              Text(message,
                  textAlign: TextAlign.center,
                  style: CustomText.medium(context).copyWith(
                      color: ThemeColors.grey_90, fontWeight: FontWeight.bold)),
              Container(height: 5),
              InkWell(
                onTap: () => onClick(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.refresh, color: ThemeColors.grey_90, size: 15),
                    Container(width: 5),
                    Text(translator.translate('tap_to_retry'),
                        style: CustomText.subhead(context)
                            .copyWith(color: ThemeColors.grey_90))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
