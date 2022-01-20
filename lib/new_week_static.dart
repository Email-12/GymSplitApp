import 'package:flutter/material.dart';

class newweekstatic extends StatefulWidget {
  const newweekstatic({Key? key}) : super(key: key);

  @override
  _newweekstaticState createState() => _newweekstaticState();
}

class _newweekstaticState extends State<newweekstatic> {

  final List<String> entries = <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  final List<String> splits = <String>['Chest & Tricep', 'Shoulders & Legs', 'Back & Bicep', 'REST', 'Chest & Tricep', 'Shoulders & Legs', 'REST'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromRGBO(62, 62, 62, 1.0),
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Container(
                height: 70,
                color: Colors.white,
                margin:  const EdgeInsets.only(top: 5, bottom: 5,left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      margin:  const EdgeInsets.only(right: 20),
                      child: const Icon(
                        (Icons.calendar_today_outlined),
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${entries[index]}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),

                        Text('${splits[index]}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),

                      ],
                    ),
                  ], // Children
                ),
              ),
            );

          }),

    );
  }
}