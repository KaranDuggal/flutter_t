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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Routes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_img.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Text("Welcome D-Stor Duggal $name",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "UserName"),
                      validator: (value) {
                        // value!.isEmpty ? "": null;
                        if (value!.isEmpty) {
                          return 'username cannot be empty';
                        }
                        return null;
                      },
                      // onChanged: (value) {
                      //   name = value;
                      //   print(name);
                      //   setState(() {});
                      // },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        // value!.isEmpty ? "": null;
                        if (value!.length<8) {
                          return 'Password lenght should be 8';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.blueAccent[100],
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
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
                            // decoration: BoxDecoration(
                            //     color: Colors.blueAccent[100],
                            //     borderRadius: BorderRadius.circular(8)),
                          ),
                          splashColor: Colors.red,
                          onTap: () => moveToHome(context)),
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
          ),
        ));
  }
}
