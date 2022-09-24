import 'package:flutter/material.dart';


void main() => runApp(const MaterialApp(
    home: MyApp()
    )
);


class MyApp extends StatefulWidget{
  const MyApp({super.key});


  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  var counter = 0;

  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('First Exercise'),
          actions: [
            IconButton(
              icon: Icon(Icons.menu_open),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('It isn\'t ready yet'))
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
                      child: Text('Count: $counter'),
                    ) //BoxDecora
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 30),
                      child: ElevatedButton(
                        onPressed: (){setState(() {
                          counter--;
                        });},
                        child: Icon(Icons.exposure_minus_1),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 30),
                      child: ElevatedButton(
                        onPressed: (){setState(() {
                          counter++;
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