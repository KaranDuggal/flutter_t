import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmiro.medium.com%2Fmax%2F1000%2F1*ilC2Aqp5sZd1wi0CopD1Hw.png&f=1&nofb=1';
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          children:[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('KaranDuggal'),
                accountEmail: Text("Duggal@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),backgroundColor: Colors.white,),
              ),
            ),
            ListTile(
              leading:Icon(CupertinoIcons.home,color:Colors.white),
              title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.25,),
            ),
            ListTile(
              leading:Icon(CupertinoIcons.profile_circled,color:Colors.white),
              title: Text("About",style: TextStyle(color: Colors.white),textScaleFactor: 1.25,),
            ),
             ListTile(
              leading:Icon(CupertinoIcons.mail,color:Colors.white),
              title: Text("Securite",style: TextStyle(color: Colors.white),textScaleFactor: 1.25,),
            )
          ]
        ),
      ),
    );
  }
}