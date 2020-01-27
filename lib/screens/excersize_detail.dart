import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
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
                  // showSearch(
                  //   context: context,
                  //   delegate: CustomSearchDelegate(),
                  // );
                }),
          ],
        ),
        body: Text("Second Route"));
  }
}
