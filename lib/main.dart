import 'package:flutter/material.dart';
// Vistas
import './pages/LoginHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
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
          child: LoginHome(),
        ));
  }
}
