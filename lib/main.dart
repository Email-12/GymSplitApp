import 'package:flutter/material.dart';
import 'NewWeekPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(title: 'GymSplit Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color.fromRGBO(62, 62, 62, 1.0),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                image: NetworkImage('https://i.imgur.com/lWwWxW6.png'),
                height: 350,
                width: 350,
              ),
            ),

            const Text(
              'Screen#1',
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNewWeekPage(title: 'Current Week Overview')),
                  );
                },
                child: const Text('Current Week'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,)
            ),
          ],
        ),
      ),


    );
  }
}
