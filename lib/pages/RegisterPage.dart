import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  RegisterPage({Key? key});
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
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
                    child: _textBox('Email'),
                  ),
                ],
              ))
        ],
      ),
    ));
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
}
