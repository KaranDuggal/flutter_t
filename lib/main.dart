import 'package:d_stor/pages/home_page.dart';
import 'package:d_stor/pages/login_page.dart';
import 'package:d_stor/utils/routes.dart';
import 'package:d_stor/widgets/themes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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
      darkTheme: MyTheme.darkTheme(context),
      theme:MyTheme.lightTheme(context),
      initialRoute: Routes.homeRoute,
      routes: {
        Routes.homeRoute:(context)=> HomePage(),
        Routes.loginRoute:(context)=>LoginPage()
      },
    );
  }
}