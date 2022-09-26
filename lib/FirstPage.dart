import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'my_globals.dart' as global;
import 'my_globals.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});


  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override


  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('First Page'),
          actions: [
            IconButton(
              icon: Icon(Icons.navigate_next_sharp),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
            )
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 25, top: 15, right: 25,bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Count: $globalcounter'),
                    ) //BoxDecora
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 30),
                      child: ElevatedButton(
                        onPressed: (){setState(() {
                          globalcounter--;
                        });},
                        child: Icon(Icons.exposure_minus_1),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 30),
                      child: ElevatedButton(
                        onPressed: (){setState(() {
                          globalcounter++;
                        });},
                        child: const Icon(Icons.plus_one),
                      ),    //BoxDec
                    )
                  ],
                )
              ],
            ),
          ],
        )
    );

  }
}

