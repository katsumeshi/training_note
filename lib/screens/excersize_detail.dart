import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_note/data/data.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Programs"),
          actions: [],
        ),
        body: Consumer<MyModel>(builder: (_, model, _s) {
          final l = model.programs.keys.toList();
          print(l);
          return ListView.builder(
              itemCount: l.length,
              itemBuilder: (context, index) {
                final excersize = peliculas[int.parse(l[index]) - 1];
                final id = excersize["id"];
                final program = model.programs[excersize["id"]];
                final b = program.volumes
                    .asMap()
                    .map((i, volume) => MapEntry(
                        i,
                        Dismissible(
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            Provider.of<MyModel>(context, listen: false)
                                .removeExcersize(id, i);
                          },
                          background: new Container(
                              padding: EdgeInsets.only(right: 20.0),
                              color: Colors.red,
                              child: new Align(
                                alignment: Alignment.centerRight,
                                child: new Text('Delete',
                                    textAlign: TextAlign.right,
                                    style: new TextStyle(color: Colors.white)),
                              )),
                          child: Container(
                              margin:
                                  const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: Column(children: <Widget>[
                                        Text("Weight"),
                                        TextField(
                                            keyboardType: TextInputType.number),
                                      ])),
                                  Container(
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: Column(children: <Widget>[
                                        Text("Reps"),
                                        TextField(
                                            keyboardType: TextInputType.number)
                                      ])),
                                  Expanded(
                                      child: Column(children: <Widget>[
                                    Text("Notes"),
                                    TextField(),
                                  ])),
                                ],
                              )),
                        )))
                    .values
                    .toList();
                final w = ExcersizeListItem(excersize);

                return Column(
                  children: <Widget>[w, ...b],
                );
              });
        }));
  }
}

class ExcersizeListItem extends StatelessWidget {
  ExcersizeListItem(this.excersize);

  final Map<String, String> excersize;

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.only(bottom: 16.0),
        color: Colors.grey.shade300,
        child: ListTile(
          title: Text(excersize["value"]),
          trailing: MaterialButton(
            onPressed: () {
              Provider.of<MyModel>(context, listen: false)
                  .addExercises(excersize["id"]);
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
