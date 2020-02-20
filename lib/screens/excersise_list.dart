import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/data.dart';
import './excersize_detail.dart';

class MyStatefulWidget extends StatefulWidget {
  final String muscleGroup;
  final String query;
  final Set<String> exercises;

  MyStatefulWidget(
      {Key key,
      this.muscleGroup = "",
      this.query = "",
      this.exercises = const {}})
      : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProgramModel>(context);
    return ListView(
        children: peliculas
            .where((f) => f["type"].contains(widget.muscleGroup))
            .where((f) => f["value"]
                .toLowerCase()
                .replaceAll(" ", "")
                .contains(widget.query))
            .map((pelicula) => ListTile(
                title: Text(pelicula["value"]),
                subtitle: Text(pelicula["type"]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProgramsRoute()),
                  );
                },
                trailing: Checkbox(
                    value: model.hasProgram(pelicula["id"]),
                    onChanged: (bool value) {
                      // var id = pelicula["id"];
                      // Provider.of<ProgramModel>(context, listen: false)
                      //     .updateExercises(id);
                    })))
            .toList());
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_HogeChangeNotifier>.value(
        value: _HogeChangeNotifier(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Exercises"),
            actions: [
              Consumer<_HogeChangeNotifier>(
                  builder: (_, _HogeChangeNotifier hoge, __) => IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search',
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(
                              muscleGroup: hoge.muscleGroup),
                        );
                      })),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Consumer<_HogeChangeNotifier>(
                  builder: (_, _HogeChangeNotifier hoge, __) =>
                      MyHomePage2(hoge.muscleGroup)),
            ),
          ),
          body: SafeArea(
              left: true,
              top: true,
              right: true,
              bottom: true,
              minimum: const EdgeInsets.all(16.0),
              child: Consumer<_HogeChangeNotifier>(
                  builder: (_, _HogeChangeNotifier hoge, __) =>
                      MyStatefulWidget(muscleGroup: hoge.muscleGroup))),
          bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgramsRoute()),
                    );
                  },
                  child: const Text('Add Exercises',
                      style: TextStyle(fontSize: 16)),
                ),
              )),
        ));
  }
}

class MyHomePage2 extends StatelessWidget {
  final String selectedMuscle;
  MyHomePage2(this.selectedMuscle);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: selectedMuscle,
        items: muscleGroups.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String value) => {
              Provider.of<_HogeChangeNotifier>(context, listen: false)
                  .changeMuscle(value),
              print(value)
            });
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final String muscleGroup;
  CustomSearchDelegate({this.muscleGroup});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return MyStatefulWidget(muscleGroup: muscleGroup, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return MyStatefulWidget(muscleGroup: muscleGroup, query: query);
  }
}

class _HogeChangeNotifier extends ChangeNotifier {
  String muscleGroup = "";
  Set<String> exercises = {};
  void updateExercises(String id) {
    exercises.contains(id) ? exercises.remove(id) : exercises.add(id);
    print(exercises);
    notifyListeners();
  }

  void removeExcersize(String id) {}

  void changeMuscle(String value) {
    muscleGroup = value;
    notifyListeners();
  }
}
