import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text('open everyday'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text('08:00 am - 19:00 om'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text('Rp.10.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'berada di jalur utama bandung-lembang.farm house menjadi objek wisata yang tidak pernah sepi berada di jalur utama bandung-lembang.farm house menjadi objek wisata yang tidak pernah sepiberada di jalur utama bandung-lembang.farm house menjadi objek wisata yang tidak pernah sepiberada di jalur utama bandung-lembang.farm house menjadi objek wisata yang tidak pernah sepi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
