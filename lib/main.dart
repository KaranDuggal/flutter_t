import 'package:d_stor/pages/home_page.dart';
import 'package:d_stor/pages/login_page.dart';
import 'package:d_stor/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      theme:ThemeData(
        primaryColor: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.loraTextTheme()
      ),
      initialRoute: Routes.loginRoute,
      routes: {
        Routes.loginRoute:(context)=> LoginPage(),
        Routes.homeRoute:(context)=> HomePage(),
        Routes.loginRoute:(context)=>LoginPage()
      },
    );
  }
}