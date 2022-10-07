import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/theme_app.dart';
import 'package:google_fonts/google_fonts.dart';

class cadastralogin_page extends StatelessWidget {
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
          SizedBox(height: 50),
          SizedBox(
            child: Text(
              style: GoogleFonts.comfortaa(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
              'Cadastre-se',
            ),
            width: 250,
            height: 80,
          ),
          SizedBox(height: 50),
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
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginPage()));
                    },
                    child: Text('cadastrar'),
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
