import 'package:d_stor/pages/home_page.dart';
import 'package:d_stor/pages/login_page.dart';
import 'package:flutter/material.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      theme:ThemeData(
        primaryColor: Colors.red
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context)=> HomePage(),
        "/login":(context)=>LoginPage()
      },
    );
  }
}