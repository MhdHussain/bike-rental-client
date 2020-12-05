import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/pages/bike_list.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/cubit/bike_list_cubit.dart';
import 'package:bikes_rental_client/utils/theme_colors.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:load/load.dart';

import 'dependency_injection/injection.dart';

void main() {
  configureInjection();
  runApp(BikesApp());
}

class BikesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BikeListCubit>(),
          child: BikeListPage(),
        )
      ],
      child: LoadingProvider(
        child: MaterialApp(
          supportedLocales: [Locale('en', 'US'), Locale('ar', 'SA')],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            AppLocalizations.delegate
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          title: 'Bike Rental',
          theme: ThemeData(
              primaryColor: ThemeColors.primary,
              primaryColorLight: ThemeColors.primaryDark,
              accentColor: ThemeColors.accent,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: "Din23"),
          builder: ExtendedNavigator(
            router: Router(),
          ),
        ),
      ),
    );
  }
}
