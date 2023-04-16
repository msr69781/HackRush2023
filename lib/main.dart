import 'dart:ffi';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:problem/BurgerInqueue.dart';
import 'package:problem/FoodInprep.dart';
import 'package:problem/Login.dart';
import './widgets/orderType.dart';
import 'package:intl/intl.dart';
import './QueuePage.dart';
import './Queuebutons.dart';
import 'package:_flutterfire_internals/_flutterfire_internals.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(QueueStats());
}

class QueueStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "order in queue",
      theme: ThemeData(primaryColor: Colors.purple),
      home: myWidget(),
    );
  }
}

class myWidget extends StatefulWidget {
  const myWidget({super.key});

  @override
  State<myWidget> createState() => _myWidgetState();
}

class _myWidgetState extends State<myWidget> {
  final _username = TextEditingController();

  final _pwd = TextEditingController();

  void addUSer() {
    final usnm = _username.text;
    final pw = _pwd.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter shop username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: TextField(
                  controller: _pwd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter password',
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text("enter"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return lgn();
                  }));
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.99,
                height: 40,
                // alignment: Alignment.center,
                child: Card(
                  color: Colors.yellow,
                  child: Text(
                    "Go to customer section",
                  ),
                ),
              ),
 ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text("Order Queue details"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Queuebuttons();
                  }));
                },
              )


            ])));
  }
}
