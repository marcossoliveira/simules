import 'package:flutter/material.dart';


class DashboardCard extends StatefulWidget {

  Color color;
  Icon icon;
  String title;
  String desc;


  DashboardCard(this.color, this.icon, this.title, this.desc);

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {

  Color color;
  Icon icon;
  String title;
  String desc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    color = widget.color;
    icon = widget.icon;
    title = widget.title;
    desc = widget.desc;

  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        color: color,
        child: Padding(
          padding: EdgeInsets.all(9.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  icon,
                  Text(title, style: TextStyle(fontSize: 12.0, color: Colors.white),),
                ],
              ),
              Row( children: <Widget>[
                Text(desc, style: TextStyle(fontSize: 50.0, color: Colors.white), textAlign: TextAlign.end,)
              ],)

            ],
          ),
        )
    );
  }
}
