import 'package:flutter/material.dart';
import 'package:gym_split/first_Page.dart';
import 'main.dart';
import 'TEST_Test.dart';

class MyNewWeekPage extends StatefulWidget {
   MyNewWeekPage({Key? key, required this.value  }) : super(key: key);

  late String value;
  //MyNewWeekPage({this.value});

  @override
  State<MyNewWeekPage> createState() => _MyNewWeekPageState(value);
}



class _MyNewWeekPageState extends State<MyNewWeekPage> {

  late String value;
  _MyNewWeekPageState(this.value);


  final List<String> entries = <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                print('the item is clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const firstPage()),
                );
              },
              title: Container(
                height: 70,
                color: Colors.grey,




                margin:  EdgeInsets.only(top: 5, bottom: 5,left: 20, right: 20),
                child: Row(
                  children: [
                    /*CircleAvatar(
                      backgroundImage: NetworkImage('https://i.imgur.com/OrYPDzE.png'),
                    ),*/

                    Container(
                      margin:  EdgeInsets.only(right: 20),
                      child: const Icon(
                         (Icons.calendar_today_outlined),
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
                          color: Colors.red,
                          ),
                        ),


                         Text(

                           value,


                           style: const TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.red,
                           ),
                        ),

                      ],
                    )
                  ], // children





                ),



              ),


            );



          }),






      
    );
  } // Widget


} // class



/*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
              child:  const ExpansionTile
                (
                title: Text('Monday'),

                children: <Widget>
                [

                  ListTile(title: Text('This is tile number 1')),

                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter muscle group',
                    ),
                  )


                ],
              ),

          ),

/*
          Expanded(
            flex: 14,
            child: const ExpansionTile
              (
              title: Text('Tuesday'),
              //subtitle: Text('Trailing expansion arrow icon'),
              children: <Widget>
              [
                ListTile(title: Text('This is tile number 1')),

                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter muscle group',
                  ),
                )
              ],
            ),
          ),

*/





        ],//children


      ),
    );
  } // Widget



*/

/*******************  BACK Button  ***************/

/*

ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          child: const Text('back'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,)
        ),

        */