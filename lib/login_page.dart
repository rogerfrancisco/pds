import 'package:flutter/material.dart';
import 'package:untitled/carro_page.dart';
import 'package:untitled/theme_app.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 80,
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
          SizedBox(height: 30),
          SizedBox(
            child: Text(
              style: GoogleFonts.comfortaa(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
              'Login',
            ),
            width: 110,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      if (email == 'rogerfrancisco1986@rede.ulbra.br' &&
                          senha == '123') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CarroPage()));
                      } else {
                        print('senha invalida');
                      }
                    },
                    child: Text('Login'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
