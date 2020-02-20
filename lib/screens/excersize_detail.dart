import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_note/data/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProgramsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProgramModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Programs"),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  final databaseReference = Firestore.instance;
                  // print(model.programs);
                  // print(model.programs["1"].volumes.first.notes);
                  try {
                    databaseReference
                        .collection('books')
                        .document('1')
                        .setData({'description': 'Head First Flutter'});
                  } catch (e) {
                    print(e.toString());
                  }
                },
                child: Text("Add",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0))),
          ],
        ),
        body: ListView.builder(
            itemCount: model.programs.length,
            itemBuilder: (context, index) {
              // final excersize = peliculas[int.parse(l[index]) - 1];
              // final id = excersize["id"];
              // final program = model.programs[excersize["id"]];
              // model.programs.map(f)
              // final b = program.volumes
              //     .asMap()
              //     .map((i, volume) => MapEntry(
              //         i,
              //         Dismissible(
              //           key: UniqueKey(),
              //           onDismissed: (direction) {
              //             // Provider.of<ProgramModel>(context, listen: false)
              //             //     .removeExcersize(id, i);
              //           },
              //           background: Container(
              //               padding: EdgeInsets.only(right: 20.0),
              //               color: Colors.red,
              //               child: Align(
              //                 alignment: Alignment.centerRight,
              //                 child: Text('Delete',
              //                     textAlign: TextAlign.right,
              //                     style: TextStyle(color: Colors.white)),
              //               )),
              //           child: Container(
              //               margin:
              //                   const EdgeInsets.only(top: 8.0, bottom: 8.0),
              //               child: Row(
              //                 mainAxisAlignment:
              //                     MainAxisAlignment.spaceAround,
              //                 children: <Widget>[
              //                   Container(
              //                       width: 50,
              //                       margin: const EdgeInsets.only(
              //                           left: 10.0, right: 10.0),
              //                       child: Column(children: <Widget>[
              //                         Text("Weight"),
              //                         TextField(
              //                             keyboardType: TextInputType.number,
              //                             onChanged: (text) {
              //                               program.volumes[i].set
              //                               program = Program(
              //                                   id: "1",
              //                                   volumes: [
              //                                     Volume(
              //                                         weight: 1,
              //                                         reps: 1,
              //                                         notes: "")
              //                                   ]);
              //                             }),
              //                       ])),
              //                   Container(
              //                       width: 50,
              //                       margin: const EdgeInsets.only(
              //                           left: 10.0, right: 10.0),
              //                       child: Column(children: <Widget>[
              //                         Text("Reps"),
              //                         TextField(
              //                             keyboardType: TextInputType.number)
              //                       ])),
              //                   Expanded(
              //                       child: Column(children: <Widget>[
              //                     Text("Notes"),
              //                     TextField(),
              //                   ])),
              //                 ],
              //               )),
              //         )))
              //     .values
              //     .toList();
              final w = ExcersizeListItem(model.programs[index]);

              return Column(
                children: <Widget>[w],
              );
            }));
  }
}

class ExcersizeListItem extends StatelessWidget {
  ExcersizeListItem(this.program);

  final Program program;

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.only(bottom: 16.0),
        color: Colors.grey.shade300,
        child: ListTile(
          title: Text(program.title),
          trailing: MaterialButton(
            onPressed: () {
              // Provider.of<ProgramModel>(context, listen: false)
              //     .addExercises(excersize["id"]);
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.add,
              size: 24,
            ),
            shape: CircleBorder(),
          ),
        ));
  }
}

class MasleItem {}
