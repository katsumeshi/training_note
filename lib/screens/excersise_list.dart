import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/data.dart';
import './excersize_detail.dart';

class MyStatefulWidget extends StatefulWidget {
  final String muscle;

  MyStatefulWidget({Key key, this.muscle}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Set<String> selected = Set.of([]);
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: peliculas
            .where((f) => f["type"].contains(widget.muscle))
            .map((pelicula) {
      return ListTile(
        title: Text(pelicula["value"]),
        subtitle: Text(pelicula["type"]),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdRoute()),
          );
        },
        trailing: Checkbox(
          value: selected.contains(pelicula["id"]),
          onChanged: (bool value) {
            setState(() {
              var id = pelicula["id"];
              value ? selected.add(id) : selected.remove(id);
            });
          },
        ),
      );
    }).toList());
  }
}

var muscles = [
  "",
  "Chest",
  "Forearms",
  "Lats",
  "Middle Back",
  "Lower Back",
  "Neck",
  "Quadriceps",
  "Hamstrings",
  "Calves",
  "Triceps",
  "Traps",
  "Shoulders",
  "Abdominals",
  "Glutes",
  "Biceps",
  "Adductors",
  "Abductors",
];

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_HogeChangeNotifier>.value(
        value: _HogeChangeNotifier(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Second Route"),
            actions: [
              Consumer<_HogeChangeNotifier>(
                  builder: (_, _HogeChangeNotifier hoge, __) => IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search',
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                      })),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Consumer<_HogeChangeNotifier>(
                  builder: (_, _HogeChangeNotifier hoge, __) =>
                      MyHomePage2(hoge.muscle)),
            ),
          ),
          body: Consumer<_HogeChangeNotifier>(
              builder: (_, _HogeChangeNotifier hoge, __) =>
                  MyStatefulWidget(muscle: hoge.muscle)),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
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
        items: muscles.map((String value) {
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
  String seleccion = '';

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
    return MyStatefulWidget();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final a = Provider.of<_HogeChangeNotifier>(context, listen: false);
    print(a);
    return MyStatefulWidget();
  }
}

class _HogeChangeNotifier extends ChangeNotifier {
  String muscle = "";
  void changeMuscle(String value) {
    muscle = value;
    notifyListeners();
  }
}

// class HogeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // ここからChangeNotifierを下層に渡す
//     return ChangeNotifierProvider<_HogeChangeNotifier>.value(
//       value: _HogeChangeNotifier(),
//       child: Column(
//         children: <Widget>[
//           SecondRoute(),
//         ],
//       ),
//     );
//   }
// }
