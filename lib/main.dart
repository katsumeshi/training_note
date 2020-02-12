import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_note/data/data.dart';
import 'screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => MyModel())],
        child: MaterialApp(
          title: 'Flutter Daaaaaemo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoginPage(),
        ));
  }
}
