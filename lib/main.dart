import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/app_localizations.dart';
import 'package:bikes_rental_client/pages/bike_list.dart';
import 'package:bikes_rental_client/pages/login.dart';
import 'package:bikes_rental_client/pages/rented_list.dart';
import 'package:bikes_rental_client/pages/signup.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:bikes_rental_client/state_management/auth/cubit/auth_cubit.dart';
import 'package:bikes_rental_client/state_management/auth/signin_form/cubit/signin_cubit.dart';
import 'package:bikes_rental_client/state_management/auth/signup_form/cubit/signup_cubit.dart';
import 'package:bikes_rental_client/state_management/bike_list/bike_list_cubit.dart';
import 'package:bikes_rental_client/state_management/bike_list/rent/cubit/rent_cubit.dart';
import 'package:bikes_rental_client/state_management/rentals/cubit/rental_list_cubit.dart';
import 'package:bikes_rental_client/state_management/rentals/cubit/return_cubit.dart';
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
        BlocProvider(create: (context) => getIt<AuthCubit>()..getAuthStatus()),
        BlocProvider(create: (context) => getIt<SigninCubit>() , child : LoginPage()),
        BlocProvider(create: (context) => getIt<SignupCubit>() , child : SignupPage()),
        BlocProvider(create: (context) => getIt<RentCubit>() ),
        BlocProvider(create: (context) => getIt<ReturnCubit>() ),
        BlocProvider(create: (context) => getIt<RentalListCubit>() , child: RentedList(), ),
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
