import 'package:d_stor/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Text("Welcome D-Stor $name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                    onChanged: (value) {
                      name = value;
                      print(name);
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password")),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 100 : 150,
                      height: 50,
                      // color:Colors.blueAccent[100],
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[100],
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds:1));
                      Navigator.pushNamed(context, Routes.homeRoute);
                    },
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     print("duggal");
                  //     Navigator.pushNamed(context, Routes.homeRoute);
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(
                  //     minimumSize:Size(150,40)
                  //   )
                  // )
                ]),
              ),
            ],
          ),
        ));
  }
}
