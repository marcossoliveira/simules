import 'package:flutter/material.dart';
import 'package:simules/widgets/Question.dart';

class Simulate extends StatefulWidget {
  @override
  _SimulateState createState() => _SimulateState();
}

class _SimulateState extends State<Simulate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questão 1'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.stop), tooltip: 'Parar Simulado',  onPressed: () {},),
          IconButton(icon: Icon(Icons.redo), tooltip: 'Pular questão', onPressed: () {},)
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Question('A obrigatoriedade do uso do cinto de segurança nas estradas é favorável para condutores e passageiros porque evita:')
          ],
        ),
      ),
    );
  }
}
