import 'package:flutter/material.dart';
import 'package:simules/screens/Simulate.dart';

class SimulateWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Orientações para o simulado'),
        ),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Iniciar simulado',
            child: Icon(Icons.play_arrow),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Simulate()
              ));
            }
        ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.block),
              title: Text('Nada de colar!'),
              subtitle: Text('Realize esse simulado com seus próprios conhecimentos, assim você verá seu progresso durante as tentativas.'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Pense bem antes de resposder as questões'),
              subtitle: Text('Há um cronometro em andamento, como na prova real, mas não se assute com ele, o tempo é suficiente para responder as questões com calma'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.redo),
              title: Text('Você pode pular questões'),
              subtitle: Text('Mas lembre-se, as mesmas serão exibidas no final, então não adianta tentar fugir 😉'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Agora você está pronto'),
              subtitle: Text('Clique no ▷ para iniciar o simulado. Boa sorte 👍'),

            ),
          ],
        )
    );
  }
}
