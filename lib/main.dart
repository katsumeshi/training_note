import 'package:flutter/material.dart';
import 'screens/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Daaaaaemo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Training Note'),
    );
  }
}

// Align(
//         alignment: Alignment.topLeft,
//         child: ListView.builder(
//             itemCount: items.length,
//             itemBuilder: (ctxt, i) {
//               return Card(
//                 child: ListTile(
//                   onTap: () {},
//                   title: Text(items[i]),
//                 ),
//               );
//             }),
//       ),

// Card(
//           child: Row(
//             children: <Widget>[
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'xx年xx月xx日のトレーニング記録',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     'ベンチプレス 75lb 10回 10回 10回',
//                   ),
//                   Text(
//                     'デッドリフト 75lb 10回 10回 10回',
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
