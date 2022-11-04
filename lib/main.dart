import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/board_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          centerTitle: false,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: BoardScreen(),
    );
  }
}
