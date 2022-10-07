import 'package:flutter/material.dart';
import 'package:untitled/cadastrarlogin_page.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/theme_app.dart';
import 'package:google_fonts/google_fonts.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: ThemeApp.cinza,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    'images/logo.png',
                    height: 25,
                    width: 47,
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Text(
                    style: GoogleFonts.comfortaa(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                    'Control Car',
                  ),
                )
              ],
            )),
        SizedBox(
          child: Image.asset(
            'images/carro.png',
            height: 340,
            width: 300,
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              SizedBox(
                width: 147,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ThemeApp.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(width: 100),
              SizedBox(
                width: 147,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ThemeApp.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                cadastralogin_page()));
                  },
                  child: Text('Cadastrar'),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
