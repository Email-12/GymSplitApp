import 'package:flutter/material.dart';
import 'package:gym_split/NewWeekPage.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {

  late String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [

        TextField(
          obscureText: false,

          onChanged: (text){
              value = text;
          },

          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter info for the day',
          ),
        ),



        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyNewWeekPage(value: value,)),
              );
            },
            child: const Text('back'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,)
        ),



      ],
    ),


    );
  }
}



/*

Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyNewWeekPage()), //MyNewWeekPage
              );


 */