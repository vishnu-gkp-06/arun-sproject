import 'package:arun/Settings_page.dart';
import 'package:flutter/material.dart';
import 'custom_widget.dart';

class ButtonWidget extends StatefulWidget {

  final Function buttonHandler;

  const ButtonWidget({Key? key, required this.buttonHandler}) : super(key: key);
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: GestureDetector(
                  onTap: (){
                    widget.buttonHandler(1);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("START",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),))
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: GestureDetector(
                  onTap: (){

                    widget.buttonHandler(2);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("STOP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),))
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)
              ,child: GestureDetector(


                  onTap: (){

                    widget.buttonHandler(3);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("PAUSE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),))
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)
              ,child: GestureDetector(


                  onTap: (){

                    widget.buttonHandler(4);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("REFRESH",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),))
              ),
            ),Padding(padding: EdgeInsets.only(bottom: 10.0)
              ,child: GestureDetector(


                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );

                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("SETTINGS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),))
              ),
            ),


          ],
        )

    );
  }

}

//
// ButtonBar(
// mainAxisSize: MainAxisSize.max,
// alignment:MainAxisAlignment.center ,
// children: <Widget>[
// ElevatedButton(
//
// child: Text('Button'),
// onPressed: () {},
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.grey),
// padding: MaterialStateProperty.all(EdgeInsets.all(5)),
// textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
// ),
//
// ElevatedButton(
// onPressed: () {},
// child: const Text('PAUSE'),
// ),
// ElevatedButton(
// onPressed: () {},
// child: const Text('STOP'),
//
// ),
// ElevatedButton(onPressed: (){}, child: const Text('RESTART')),
// ElevatedButton(onPressed: (){},child: const Text('SETTINGS'),)
// ],
// ),
