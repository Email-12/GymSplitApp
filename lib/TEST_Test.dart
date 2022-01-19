import 'package:flutter/material.dart';

class MyTestPage extends StatefulWidget {
  const MyTestPage({Key? key}) : super(key: key);

  @override
  _MyTestPageState createState() => _MyTestPageState();

}




class _MyTestPageState extends State<MyTestPage> {


  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";


  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: _editTitleTextField(),
      ),
    );
  }




  @override
  Widget _editTitleTextField() {
    if (_isEditingText)
      return Container(
        child: TextField(
          onSubmitted: (newValue){
            setState(() {
              initialText = newValue;
              _isEditingText =false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingText = true;
        });
      },

      child: Text(
          initialText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          )
      ),
    );

  } // widget

} // class