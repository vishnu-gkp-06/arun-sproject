import 'package:flutter/material.dart';
import 'button_widget.dart';
import 'custom_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vital Sign Monitoring"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomContainer(),
          // child: Row(
          //   children: <Widget>[
          //     Flexible(flex: 3,
          //       fit: FlexFit.tight,child: CustomContainer(),),
          //     SizedBox(
          //       width: 2.0,
          //
          //     ), //SizedBox
          //     Flexible(
          //       flex: 2,
          //       fit: FlexFit.tight,
          //       child: ButtonWidget(), //Container
          //     )
          //   ],
          // ),
        ),

      ),

    );
  }
}
