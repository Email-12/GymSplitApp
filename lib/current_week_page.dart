import 'package:flutter/material.dart';
import 'package:gym_split/main.dart';

class CurrentWeekPage extends StatefulWidget {
  const CurrentWeekPage({Key? key}) : super(key: key);

  @override
  _CurrentWeekPageState createState() => _CurrentWeekPageState();
}

class _CurrentWeekPageState extends State<CurrentWeekPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.only(bottom: 160),
              child: const Image(
                image: NetworkImage('https://i.imgur.com/CK14rBl.jpg'),
              ),
            ),
            Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.only(bottom: 25),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()), //MyNewWeekPage
                    );
                  },
                  child: const Text('Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,)
              ),
            ),

          ],
        ),
      ),


    );
  }
}
