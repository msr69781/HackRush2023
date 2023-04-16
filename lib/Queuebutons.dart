import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import './QueuePage.dart';
import './widgets/orderType.dart';
import 'package:intl/intl.dart';
import './QueuePage.dart';
import './FoodInprep.dart';
import './BurgerInqueue.dart';

class Queuebuttons extends StatefulWidget {


  @override
  State<Queuebuttons> createState() => _QueuebuttonsState();
}

class _QueuebuttonsState extends State<Queuebuttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("choose to know about your order"),
      backgroundColor: Colors.purple,),
      body: Container(
              height: MediaQuery.of(context).size.height*0.8,
              padding: EdgeInsets.all(10),
              // child: SingleChildScrollView(
    
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FittedBox(
                      
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QueuePage();
                          }));
                        },
                        child: Text(
                          "Orders Ready to collect",
                        ),
                        style: TextButton.styleFrom(
                            fixedSize: Size(200, 150),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FittedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FoodPrep();
                          }));
                        },
                        child: Text(
                          "Order being prepared",
                        ),
                        style: TextButton.styleFrom(
                            fixedSize: Size(200, 150),
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black),
                      ),
                    ),
                    SizedBox(height: 50,),
                    FittedBox(
                      child: ElevatedButton(
    
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BurgerQueue();
                          }));
                        },
                        child: Text(
                          "Order in Queue",
                        ),
                        style: TextButton.styleFrom(
                            fixedSize: Size(200, 150),
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
              // ),
      ),
    );
  }
}