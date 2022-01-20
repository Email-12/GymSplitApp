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
        Text('[Day of the Week]',                              //WEEK DAY
          style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Colors.black,
            ),
        ),

        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
          //width: 300,
          child: TextField(
            obscureText: false,
            onChanged: (text){
                value = text;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter description here...',
            ),
          ),
        ),

        Container(
          width: 130,
          height: 40,
          margin: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyNewWeekPage(value: value,)),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Description added')));
              },
              child: const Text('DONE',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                color: Colors.white,
              ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,)
          ),
        ),

        Container(
          width: 130,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyNewWeekPage(value: '',)),
                );
              },
              child: const Text('BACK',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                color: Colors.white,
              ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,)
          ),
        ),

      ],
    ),

    );
  }
}