import 'package:flutter/material.dart';
import 'main.dart';

class MyNewWeekPage extends StatefulWidget {
  const MyNewWeekPage({Key? key, required this.title, }) : super(key: key);

  final String title;

  @override
  State<MyNewWeekPage> createState() => _MyNewWeekPageState();
}

class _MyNewWeekPageState extends State<MyNewWeekPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(

             // margin: EdgeInsets.only(bottom: 0.0),
              child :const Align (
                alignment: Alignment.topCenter,

                child:Text(
                    'Current Week Overview',
                    style: TextStyle(
                      fontSize: 35,

                    )
                ),
              ),
            ),



            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter muscle group',
              ),
            ),

        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(title: 'NewWeekPage',)),
            );
          },
          child: const Text('back'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,)
        ),


          ],
        ),
      ),

    );
  }
}