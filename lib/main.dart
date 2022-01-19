import 'package:flutter/material.dart';
import 'package:gym_split/TEST_Test.dart';
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

            ElevatedButton(
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyNewWeekPage(value: '',)), //MyNewWeekPage
              );
            },
                child: const Text('Current Week'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,)
            ),
/*
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyTestPage()), //MyTestPage
                  );
                },
                child: const Text('TEST'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,)
            ),
*/
          ],
        ),
      ),


    );
  }
}
