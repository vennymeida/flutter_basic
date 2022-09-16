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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
              ),
            ),
            Image.network(
                "https://akcdn.detik.net.id/community/media/visual/2022/08/29/barcelona.jpeg?w=700&q=90"),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(7),
              child: const Text(
                'Costa Mendekat Ke Palmeiras',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child: const Text(
                'Transfer',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: Column(children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 198,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          image: const DecorationImage(
                            alignment: Alignment.topCenter,
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/gambar1.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 210,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: const Text(
                            'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: const Text('Barcelona Feb 13, 2021'),
                )
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: Column(children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 198,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          image: const DecorationImage(
                            alignment: Alignment.topCenter,
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/gambar2.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 210,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: const Text(
                            'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: const Text('Barcelona Feb 13, 2021'),
                )
              ]),
            ),
          ],
        ));
  }
}
