import 'package:flutter/material.dart';
// Vistas
import './pages/LoginHome.dart';
import './pages/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {},
        title: 'Login Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
            textTheme: TextTheme(
              bodyText1: TextStyle(fontFamily: 'ubuntu'),
            )),
        home: Center(
          child: RegisterPage(),
        ));
  }
}
