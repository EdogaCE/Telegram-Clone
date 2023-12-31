// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
// import 'file:///D:/My%20Flutter%20Projects/telegram_clone_flutter/lib/screens/light_mode/home_screen.dart';
import 'package:test_dan/screens/light_mode/home_screen.dart';

class DrawerScreenDark extends StatefulWidget {
  @override
  _DrawerScreenDarkState createState() => _DrawerScreenDarkState();
}

class _DrawerScreenDarkState extends State<DrawerScreenDark> {
  var _icon = Icons.wb_sunny;
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: <Widget>[

          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff212d3b)
            ),

              accountName: const Text('Creative'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/img1.jpg'),
              ),
              accountEmail: const Text('creative1@gmail.com',style: TextStyle(color: Colors.white70),),
            otherAccountsPictures: [
              IconButton(
                icon: Icon(
                  _icon,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {

                  if (_icon == Icons.wb_sunny) {
                    _icon = Icons.brightness_2;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()),);


                  } else {
                    _icon = Icons.wb_sunny;

                  }

                },
              ),
            ],
          
          
          ),

          ListTile(


            title:
            const Row(
            children: [
              Icon(Icons.group,color: Colors.grey,),
              SizedBox(width: 30,),
              Text('New Group',style: TextStyle(color: Colors.white),),

            ],
            ),
            onTap: () {},

          ),


          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.person_outline,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Contacts',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),

          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.phone,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Calls',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),

          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.place_outlined,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('People Nearby',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),

          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.bookmark_border,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Saved Messages',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),

          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.settings,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Setting',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),




          const Divider(color: Colors.black,),

          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.person_add,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Invite Friends',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),


          ListTile(

            title:
            const Row(
              children: [
                Icon(Icons.group,color: Colors.grey,),
                SizedBox(width: 30,),
                Text('Telegram F&Q',style: TextStyle(color: Colors.white),),

              ],
            ),
            onTap: () {},

          ),



        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}