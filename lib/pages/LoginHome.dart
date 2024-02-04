import 'package:flutter/material.dart';

class LoginHome extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  LoginHome({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    _deviceHeigth = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(textDirection: TextDirection.ltr, children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                _deviceWidth * 0.10, _deviceHeigth * 0.20, 15, 0),
            child: Container(
              width: _deviceWidth * 1,
              height: _deviceHeigth * 0.75,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: _deviceWidth * 0.90,
                    child: Text(
                      'Username',
                      style: TextStyle(
                          color: Color.fromRGBO(28, 28, 28, 1.0), fontSize: 12),
                    ),
                  ),
                  Container(
                    child: _textBox('youremail@tweak.com'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: _deviceWidth * 0.90,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Color.fromRGBO(28, 28, 28, 1.0), fontSize: 12),
                    ),
                  ),
                  _textBox("tweak-employee101234"),
                  SizedBox(
                    height: 30,
                  ),
                  _btnAcceder(),
                ],
              ),
            ),
          ),
        ]),
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

  Widget _textBox(String hintText) {
    return TextField(
      onTap: () => {},
      enabled: true,
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: hintText),
    );
  }
}
