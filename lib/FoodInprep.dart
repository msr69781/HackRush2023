import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/orderType.dart';

class FoodPrep extends StatefulWidget {
  const FoodPrep({super.key});

  @override
  State<FoodPrep> createState() => _FoodPrepState();
}

class _FoodPrepState extends State<FoodPrep> {
   final List<QueueOrderDetails> fdPreplst = [
    QueueOrderDetails(
        foodType: "burger",
        token: 2,
        name: "manvendra Ji",
        mobileNumber: 9414411836)
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
                      color: Colors.yellow,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Icon(Icons.food_bank_rounded),
                              Text("TokenNumber: ${fdPreplst[index].token}")
                            ],
                          ),
                          FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(fdPreplst[index].foodType),
                                  //Text("Order Id: ${lst[index].dt}"),
                                  Text("Name: ${fdPreplst[index].name}"),
                                  Text(
                                      "Mobile Number:${fdPreplst[index].mobileNumber}"),
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
            itemCount: fdPreplst.length,
          ),
          // ),
        ));
  }
}