import 'dart:async';

import 'package:arun/button_widget.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {


@override
State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {


double value=0.0;
double heart=0.0;
void passedFunction(int input) {


  if(input==1)
    {
      setState(() {
        this.value+=1.0;
        this.heart+=5.0;
      });
    }
  else if(input==2)
    {
      setState(() {
        this.value-=1.0;
        this.heart-=5.0;
      });
    }
  else if(input==3)
    {
      setState(()
          {
          });
    }
  else if(input==4)
    {
      setState(()
          {
            this.value=0.0;
            this.heart=0.0;
          });
    }

}

ColorSwatch<int> Heart_color(double value)
{
  if(value==0.0)
    return Colors.lightBlueAccent;
  else if(value>=0.0)
    return Colors.greenAccent;
  else
    return Colors.redAccent;

}



MaterialColor choose(double value)
{
  if(value==0.0)
    return Colors.lightBlue;
  else if(value>=0.0)
    return Colors.green;
  else
   return Colors.red;

}

@override
Widget build(BuildContext context) {


  return Center(
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children:<Widget>[
          Flexible(
            flex: 3,
            child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: choose(value)
                  ),

                  child: Text(
                    '$value',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize:30),
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child:  const Text("BREATHING RATE",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black

                  ),),
              ),

              Flexible(
                flex: 1,
                child: Container(

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Heart_color(heart),
                  ),

                  child: Text('$heart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize:30),),),
              ),
              Padding(
                padding:EdgeInsets.all(2.0),
                child:  const Text("HEART RATE",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black

                  ),),
              ),


            ],
        ),
          ),
          SizedBox(
            width: 2.0,

          ),
          Flexible(
            flex: 2,
              child:  ButtonWidget(
                buttonHandler: passedFunction,
              )

          )




        ],
      ),

    ),
  );
}






}


