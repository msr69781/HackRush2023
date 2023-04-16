import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/orderType.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({super.key});

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
   final List<QueueOrderDetails> lst = [
    QueueOrderDetails(
        foodType: "burger",
       token: 1,
        name: "manish Ji",
        mobileNumber: 94144)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text("Order Queue Details"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          height: 200,
          padding: EdgeInsets.all(10),
          // child: SingleChildScrollView(

          child: ListView.builder(
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: FittedBox(
                  child: Container(
                    child: Card(
                      
                      color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Icon(Icons.food_bank_rounded),
                              Text("TokenNumber: ${lst[index].token}")
                            ],
                          ),
                          FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(lst[index].foodType),
                                  //Text("Order Id: ${lst[index].dt}"),
                                  Text("Name: ${lst[index].name}"),
                                  Text(
                                      "Mobile Number:${lst[index].mobileNumber}"),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: lst.length,
          ),
          // ),
        ));
  }
}