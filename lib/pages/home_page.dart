import 'dart:convert';

import 'package:d_stor/models/catalog.dart';
import 'package:d_stor/widgets/drawer.dart';
import 'package:d_stor/widgets/items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 40;

  final name = 'duggal';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    // List<Item> list = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // print(productData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.white,
          // iconTheme: IconThemeData(color: Colors.black),
          title: Text('data'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16
                      ),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(item.name,style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                          ),
                        child: Image.network(item.image),
                        footer: Container(
                          child: Text("\$ ${item.price}",style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black
                          ),
                          ),
                        ),
                    );
                  },
                  itemCount: CatalogModel.items.length,
                )
              // ListView.builder(
              //   // itemCount: CatalogModel.items.length,
              //   itemCount: CatalogModel.items.length,
              //   itemBuilder: (BuildContext context, int index) {
              //   return ItemWidget(
              //     item: CatalogModel.items[index],
              //     // item: CatalogModel.items[index],
              //     );
              //   },
              // )
              : Center(child: CircularProgressIndicator()),
        ));
  }
}

// ListView.builder(
//           // itemCount: CatalogModel.items.length,
//           itemCount: CatalogModel.items.length,
//           itemBuilder: (BuildContext context, int index) {
//           return ItemWidget(
//             item: CatalogModel.items[index],
//             // item: CatalogModel.items[index],
//             );
//           },
//         )
