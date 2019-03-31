import 'package:flutter/material.dart';
import 'package:simules/screens/History.dart';
import 'package:simules/screens/Home.dart';

class DrawerSegment extends StatefulWidget {
  @override
  _DrawerSegmentState createState() => _DrawerSegmentState();
}

class _DrawerSegmentState extends State<DrawerSegment> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4.0,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/23/23770fc332b3e1b8b6589dda990eec9dfee663f6_full.jpg'),
            ),
            accountName: Text('Marcos Oliveira'),
            accountEmail: Text('oliveira.marcos1@yahoo.de'),
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            title: Text('Histórico'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => HistoryScreen()
              ));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Sobre'),
            onTap: () => {print('Clicou em Sobre')},
          ),
        ],
      ),
    );
  }
}
