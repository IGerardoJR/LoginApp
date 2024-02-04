import 'package:flutter/material.dart';

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
      title: 'Login Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: 'ubuntu'),
          )),
      home: SafeArea(
        child: Scaffold(
          body: Column(textDirection: TextDirection.ltr, children: [
            Padding(
                padding: EdgeInsets.fromLTRB(
                    _deviceWidth * 0.10, _deviceHeigth * 0.20, 15, 0),
                child: Container(
                  width: _deviceWidth * 1,
                  height: _deviceHeigth * 0.60,
                  child: Column(
                    children: [
                      Container(
                          width: _deviceHeigth * 0.90,
                          child: _texto('Login', 30, Colors.black)),
                      Container(
                        width: _deviceHeigth * 0.90,
                        child: Text(
                          'Sign up to continue',
                          style: TextStyle(
                              color: Color.fromRGBO(146, 145, 142, 1.0),
                              fontSize: 25,
                              fontFamily: "ubuntu",
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }

  Widget _texto(String texto, double? tamanoFuente, Color color) {
    return Text(
      texto,
      style: TextStyle(
          fontSize: tamanoFuente,
          fontWeight: FontWeight.bold,
          fontFamily: "ubuntu",
          color: color),
    );
  }

  Widget _btnAcceder() {
    return ElevatedButton(
        onPressed: () => print('clicked'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(255, 217, 5, 1.0)),
        child: Text(
          'Acceder',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ));
  }

  // Sep
}
