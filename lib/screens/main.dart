import 'package:flutter/material.dart';
import './excersise_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ["1", "2", "Third", "4"];

  Widget traningCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'xx年xx月xx日のトレーニング記録',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'ベンチプレス 75lb 10回 10回 10回',
              ),
              Text(
                'デッドリフト 75lb 10回 10回 10回',
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (ctxt, i) {
              return traningCard();
            }),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          updateData();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void updateData() {
  final databaseReference = Firestore.instance;
  try {
    databaseReference
        .collection('books')
        .document('1')
        .setData({'description': 'Head First Flutter'});
  } catch (e) {
    print(e.toString());
  }
}

Widget buildBody(BuildContext ctxt, int index) {
  return new Text(litems[index]);
}

List<String> litems = ["1", "2", "Third", "4"];
