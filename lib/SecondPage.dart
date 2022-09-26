import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'my_globals.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Second page'),
          actions: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.navigate_before))
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
                        child: Text('count: $globalcounter'),
                      ) //BoxDecora
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}