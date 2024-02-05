import 'package:LoginApp/pages/LoginHome.dart';
import 'package:LoginApp/pages/RegisterPage.dart';
import 'package:flutter/material.dart';
// Vistas

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginHome(),
      '/Register': (context) => RegisterPage()
    },
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
              child: ElevatedButton(
                  onPressed: () => {
                        print('Pressed'),
                        Navigator.pushNamed(context, '/secundaria')
                      },
                  child: Text('Cambiar de ventana')))),
    );
  }
}

class SegundaVentana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () => {
                print('Devolverse a la primer pestaña button'),
                Navigator.pop(context)
              },
          child: Text('Devolverse a la primer pestaña')),
    ));
  }
}
