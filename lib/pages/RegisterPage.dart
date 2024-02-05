import 'package:LoginApp/pages/LoginHome.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  // Listas para el o los dropdowns
  List<String> ListaGeneros = ["Hombre", "Mujeres"];
  RegisterPage({Key? key});
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/': (context) => LoginHome()},
      home: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  _deviceWidth * 0.09, _deviceHeigth * 0.12, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: _deviceWidth,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "ubuntu",
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: _deviceWidth,
                    child: Text(
                      'Set up a request account creating',
                      style: TextStyle(
                        color: Color.fromRGBO(146, 145, 142, 1.0),
                        fontFamily: "ubuntu",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeigth * 0.0391,
                  ),
                  Container(
                    width: _deviceWidth,
                    child: Text(
                      'First name',
                      style: TextStyle(
                          color: Color.fromRGBO(63, 63, 63, 1.0),
                          fontFamily: "ubuntu",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, _deviceWidth * 0.25, 0),
                    child:
                        SizedBox(width: _deviceWidth, child: _textBox('Juan')),
                  ),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Container(
                      width: _deviceWidth,
                      child: Text('Last name',
                          style: TextStyle(
                              color: Color.fromRGBO(28, 28, 28, 1.0),
                              fontSize: 20,
                              fontFamily: "ubuntu",
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, _deviceWidth * 0.25, 0),
                    child: _textBox('Lopez'),
                  ),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Container(
                      width: _deviceWidth,
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Color.fromRGBO(28, 28, 28, 1.0),
                            fontSize: 20,
                            fontFamily: "ubuntu",
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, _deviceWidth * 0.25, 0),
                    child: _textBox('juan.lopez@tweak.mx'),
                  ),
                  SizedBox(
                    height: _deviceHeigth * 0.016,
                  ),
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: Color.fromRGBO(28, 28, 28, 1.0),
                          fontWeight: FontWeight.bold,
                          fontFamily: "ubuntu",
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: _deviceWidth * 0.26,
                      ),
                      Text(
                        'Born Year',
                        style: TextStyle(
                          color: Color.fromRGBO(28, 28, 28, 1.0),
                          fontWeight: FontWeight.bold,
                          fontFamily: "ubuntu",
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      _dropDownBox(lista: ListaGeneros),
                      SizedBox(
                        width: _deviceWidth * 0.22,
                      ),
                      Container(
                        width: _deviceWidth * 0.35,
                        height: _deviceHeigth * 0.10,
                        child: _textBox('1980'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: _deviceWidth * 0.1,
                  ),
                ],
              ),
            ),
            SizedBox(
                width: _deviceWidth * 0.43,
                height: _deviceHeigth * 0.08,
                child: _btnRegistrarse())
          ],
        ),
      )),
    );
  }

  // TextBox widget
  Widget _textBox(String hintText) {
    return TextField(
      onTap: () => {},
      enabled: true,
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: hintText),
    );
  }

  Widget _dropDownBox({required List<String> lista}) {
    // const List<String> lista = ["Hombre", "Mujer"];
    String dropDownValue = lista.first;
    return Container(
      child: DropdownButton<String>(
        value: dropDownValue,
        icon: const Icon(Icons.text_rotation_angledown_outlined),
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(height: 2, color: Colors.deepPurpleAccent),
        onChanged: (value) => {},
        items: lista.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value,
              child: Container(width: _deviceWidth * 0.15, child: Text(value)));
        }).toList(),
      ),
    );
  }

  Widget _btnRegistrarse() {
    return ElevatedButton(
        onPressed: () => print('Te registraste!'),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(
          'Crear cuenta',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
