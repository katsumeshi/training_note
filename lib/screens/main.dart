import 'package:flutter/material.dart';
import '../data/data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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

// const a = ListView(
//   children: peliculas
//       // .where((f) => f.toLowerCase().replaceAll(" ", "").contains(query))
//       .map((pelicula) {
//     return ListTile(
//       title: Text(pelicula),
//       subtitle: Text(pelicula),
//       onTap: () {
//         // close(context, null);
//         // Navigator.pushNamed(context, 'detalle', arguments: pelicula);
//       },
//     );
//   }).toList()
// );

Widget buildBody(BuildContext ctxt, int index) {
  return new Text(litems[index]);
}

List<String> litems = ["1", "2", "Third", "4"];

// const a = ListView.builder(
//     itemCount: litems.length,
//     itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index));

Widget myListView(BuildContext context, String query) {
  // Row(
  //       children: <Widget>[
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             Text(
  //               'xx年xx月xx日のトレーニング記録',
  //               style: TextStyle(fontWeight: FontWeight.bold),
  //             ),
  //             Text(
  //               'ベンチプレス 75lb 10回 10回 10回',
  //             ),
  //             Text(
  //               'デッドリフト 75lb 10回 10回 10回',
  //             ),
  //           ],
  //         ),
  //       ],
  //     )

  return ListView(
      children: peliculas
          .where((f) => f.toLowerCase().replaceAll(" ", "").contains(query))
          .map((pelicula) {
    return ListTile(
      title: Text(pelicula),
      subtitle: Text(pelicula),
      onTap: () {
        // close(context, null);
        // Navigator.pushNamed(context, 'detalle', arguments: pelicula);
      },
      trailing: Checkbox(value: false, onChanged: (bool value) {}),
    );
  }).toList());
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              }),
        ],
      ),
      body: myListView(context, ""),
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
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  String seleccion = '';

  final peliculasRecientes = ['Spiderman', 'Avengers'];

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
    return myListView(context, query);
    // return ListView(
    //     children: peliculas
    //         .where((f) => f.toLowerCase().replaceAll(" ", "").contains(query))
    //         .map((pelicula) {
    //   return ListTile(
    //     title: Text(pelicula),
    //     subtitle: Text(pelicula),
    //     onTap: () {
    //       print("press result");
    //       close(context, null);
    //     },
    //   );
    // }).toList());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print(query);
    return myListView(context, query);

    // ListView(
    //   children: peliculas
    //       .where((f) => f.toLowerCase().replaceAll(" ", "").contains(query))
    //       .map((pelicula) {
    //     return ListTile(
    //       title: Text(pelicula),
    //       subtitle: Text(pelicula),
    //       onTap: () {
    //         close(context, null);
    //         Navigator.pushNamed(context, 'detalle', arguments: pelicula);
    //       },
    //     );
    //   }).toList(),
    // );
  }
}
