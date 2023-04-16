import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/orderType.dart';

class BurgerQueue extends StatefulWidget {
  @override
  State<BurgerQueue> createState() => BurgerQueueState();
}

class BurgerQueueState extends State<BurgerQueue> {
   final List<QueueOrderDetails> BurgerIQueue = [
    QueueOrderDetails(
        foodType: "burger",
        token: 3,
        name: "abcd Ji",
        mobileNumber: 9929054056)
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
                      color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Icon(Icons.food_bank_rounded),
                              Text("TokenNumber: ${BurgerIQueue[index].token}")
                            ],
                          ),
                          FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(BurgerIQueue[index].foodType),
                                  //Text("Order Id: ${lst[index].dt}"),
                                  Text("Name: ${BurgerIQueue[index].name}"),
                                  Text(
                                      "Mobile Number:${BurgerIQueue[index].mobileNumber}"),
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
            itemCount: BurgerIQueue.length,
          ),
          // ),
        ));
  }
}