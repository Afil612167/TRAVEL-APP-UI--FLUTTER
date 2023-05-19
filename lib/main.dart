import 'package:flutter/material.dart';
import 'package:travel_app_ui/view/start_tour.dart';
import 'package:travel_app_ui/view/travel_now.dart';
import 'package:travel_app_ui/view/welcome.dart';
import 'package:travel_app_ui/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App UI",
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        MyRoutes.welcomeRoute: (context) => WelcomeScreen(),
        MyRoutes.startTourRoute: (context) => StartTourScreen(),
        MyRoutes.tourNowRoute: (context) => TravelNowScreen(),
      },
    );
  }
}
