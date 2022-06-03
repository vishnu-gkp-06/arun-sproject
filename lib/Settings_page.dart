import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('GO BACK'),
          onPressed: (){
            Navigator.pop(context);
          },
        )
        ,
      ),
    );
  }


}