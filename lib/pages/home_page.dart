import 'package:d_stor/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final days = 40;
  final name = 'duggal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("welcome duggal stor day = $name"),
        ),
      ),
    );
  }
}
