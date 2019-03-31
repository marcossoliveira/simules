import 'package:flutter/material.dart';
import 'package:simules/screens/SimulateWelcome.dart';
import 'package:simules/widgets/DashboardCard.dart';
import 'package:simules/widgets/Drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SimulES'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow, color: Colors.white,),
          tooltip: 'Iniciar Simulado',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => SimulateWelcome()
            ));
          },
        ),
        drawer: DrawerSegment(),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: <Widget>[
            DashboardCard(Colors.teal, Icon(Icons.thumb_up, color: Colors.white,), ' Aprovações', '20'),
            DashboardCard(Colors.redAccent, Icon(Icons.thumb_down, color: Colors.white,), ' Reprovações', '2'),
            DashboardCard(Colors.deepPurple, Icon(Icons.trending_up, color: Colors.white,), ' Desempenho', '87%'),
          ],
        ));
  }
}
