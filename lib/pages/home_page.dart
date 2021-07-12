import 'package:d_stor/models/catalog.dart';
import 'package:d_stor/widgets/drawer.dart';
import 'package:d_stor/widgets/items_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final days = 40;
  final name = 'duggal';


  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text('data'),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            item: dummyList[index],
            // item: CatalogModel.items[index],
            );
          },
        ),
      )
    );
  }
}
