import 'package:flutter/material.dart';
import 'package:gym_split/current_week_page.dart';
import 'package:gym_split/new_week_static.dart';
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

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 62, 62, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 350,
              width: 350,
              margin: const EdgeInsets.only(bottom: 90),
              child: const Image(
                image: NetworkImage('https://i.imgur.com/lWwWxW6.png'),
              ),
            ),

            Container(
              width: 300,
              height: 40,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newweekstatic( )),
                    );
                  },
                  child: const Text('New Week (Static Demo)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,)
              ),
            ),

            Container(
              width: 300,
              height: 40,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                MaterialPageRoute(builder: (context) => MyNewWeekPage(value: '', )),
                );
              },
                  child: const Text('New Week (Live Demo)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,)
              ),
            ),

            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CurrentWeekPage()),
                    );
                  }, // onPressed
                  child: const Text('Current Week',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    ),
                  ),
                    style: ElevatedButton.styleFrom
                      (
                        primary: Colors.grey,
                    ), // Button Style
              ),
            ),

          ],
        ),
      ),

    );
  } // Widget
} // Class