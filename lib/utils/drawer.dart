import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OurDrawer extends StatelessWidget {
  const OurDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: avoid_unnecessary_containers
      child: Container(
        color: Colors.blue.shade400,
        child:ListView(
          children: const [
             DrawerHeader(
               padding: EdgeInsets.zero,
               
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Raushan Kumar'), 
                accountEmail: Text("raviseraushan@gmai.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("static/images/user.jpg")
              ),
              )

              ),
              ListTile(
                leading: Icon(CupertinoIcons.home,color: Colors.white,),
                title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
              ),
              
              ListTile(
                leading: Icon(CupertinoIcons.bookmark_fill,color: Colors.white,),
                title: Text("Discover",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                title: Text("Profile",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.square_arrow_left,color: Colors.white,),
                title: Text("Logout",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
              ),

          ],
        ) 
        ),
    );
  }
}