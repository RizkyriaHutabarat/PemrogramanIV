import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempat Wisata Bandung',
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
            margin: const EdgeInsets.only(top: 16.0),
            child: const Text(
              'Ranca Upas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text("Open Everyday"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.watch_later_outlined),
                        Text("09:00 - 20:00"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text("Rp 20.000"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 1.0),
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Text('Open Everday'),
          //       Text('09:00-20:00'),
          //       Text('Rp 20.000'),
          //     ],
          //   ),
          // ),

          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 16.0),
          //   child: const Row(
          //     children: <Widget>[
          //       Column(
          //         children: <Widget>[
          //           Icon(Icons.watch_later_outlined),
          //           SizedBox(height: 8.0),
          //           Text('09:00-20:00'),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 16.0),
          //   child: const Row(
          //     children: <Widget>[
          //       Column(
          //         children: <Widget>[
          //           Icon(Icons.monetization_on),
          //           SizedBox(height: 8.0),
          //           Text('Rp 20.000'),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Ranca Upas Ciwiday adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan Bandung Selatan, satu lokasi dengan kawah putih, kolam cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wosata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      )),
    );
  }
}
