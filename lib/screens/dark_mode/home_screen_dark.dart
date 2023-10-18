// ignore_for_file: unnecessary_null_comparison, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
// import 'package:telegram_clone_flutter/screens/dark_mode/drawer_dark.dart';
// // import 'file:///D:/My%20Flutter%20Projects/telegram_clone_flutter/lib/screens/light_mode/drawer.dart';
// import 'package:telegram_clone_flutter/screens/models/chat_model.dart';
import 'package:test_dan/screens/dark_mode/drawer_dark.dart';
import 'package:test_dan/screens/models/chat_model.dart';

class HomeScreenDark extends StatefulWidget {
  @override
  _HomeScreenDarkState createState() => _HomeScreenDarkState();
}

class _HomeScreenDarkState extends State<HomeScreenDark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d2733),
      appBar: AppBar(
        backgroundColor: const Color(0xff212d3b),
        title: const Text('Telegram'),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff1d2733),
          //This will change the drawer background to blue.
          //other styles
        ),
        child: DrawerScreenDark(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(items[i].imgPath),
                  ),
                  title: items[i].status
                      ? Text(
                          items[i].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      : Row(
                          children: [
                            Text(
                              items[i].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Icon(
                              Icons.volume_mute,
                              size: 18,
                              color: Color(0xff7d8b98),
                            )
                          ],
                        ),
                  subtitle: Text(
                    items[i].message,
                    style: const TextStyle(color: Color(0xff7d8b98)),
                  ),
                  trailing: items[i].messNum != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              items[i].time,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: items[i].status
                                      ? const Color(0xff64b4ef)
                                      : const Color(0xff3e5263),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${items[i].messNum}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              items[i].time,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                          ],
                        ));
            },
            separatorBuilder: (ctx, i) {
              return const Divider();
            },
            itemCount: items.length),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.create,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF65a9e0),
          onPressed: () {}),
    );
  }
}
