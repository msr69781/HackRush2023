import 'package:flutter/material.dart';
import 'package:problem/BurgerInqueue.dart';
import 'package:problem/FoodInprep.dart';
import './widgets/orderType.dart';
import 'package:intl/intl.dart';
import './QueuePage.dart';
import './Queuebutons.dart';
import 'package:flutter/material.dart';
import './BurgerInqueue.dart';

class lgn extends StatefulWidget {
  @override
  State<lgn> createState() => _lgnState();
}

class _lgnState extends State<lgn> {
  final _productCode = TextEditingController();
  final _Name = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _tokennumber = TextEditingController();
  final List<QueueOrderDetails> lst = [
    QueueOrderDetails(
        foodType: "burger", token: 1, name: "manish Ji", mobileNumber: 94144)
  ];

  void ADDTOQUEUE() {
    final nm = _Name.text;
    final _pnbr = int.parse(_phoneNumber.text);
    final tn = int.parse(_tokennumber.text);
    final pn = _productCode.text;

    if (nm == null || _pnbr == null || tn == null || tn == null) return;

    lst.add(QueueOrderDetails(
        foodType: pn, token: tn, name: nm, mobileNumber: _pnbr));
  }

  void addItemToPrep(final tokn) {
    for (int i = 0; i < lst.length; i++) {
      if (lst[i].token == tokn) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update the details"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                  child: TextField(
                    controller: _productCode,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter product code',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: _Name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter users name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                  child: TextField(
                    controller: _phoneNumber,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter mobile number',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                  child: TextField(
                    controller: _tokennumber,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter token number',
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Queuebuttons();
                      }));
                    },
                    child: Text("Go to button  page")),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Queuebuttons();
                          }));
                        },
                        child: Text("Add item to Queue")),
                    Expanded(
                        child: Card(
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: "enter token  number"),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Queuebuttons();
                          }));
                        },
                        child: Text("order prepared")),
                    Expanded(
                        child: Card(
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: "enter token  number"),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
