// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
// import 'package:telegram_clone_flutter/screens/dark_mode/home_screen_dark.dart';
import 'package:test_dan/screens/dark_mode/home_screen_dark.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  var _icon = Icons.brightness_2;
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: <Widget>[

          UserAccountsDrawerHeader(
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

                  if (_icon == Icons.brightness_2) {
                    _icon = Icons.wb_sunny;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreenDark()),);


                  } else {
                    _icon = Icons.brightness_2;

                  }

                },
              ),
            ],
          
          
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.person_outline,
            title: 'Contacts',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.place_outlined,
            title: 'People Nearby',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            onTilePressed: () {},
          ),


          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTilePressed: () {},
          ),

          const Divider(),

          DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            onTilePressed: () {},
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({ Key? key, required this.iconData, required this.title, required this.onTilePressed})
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