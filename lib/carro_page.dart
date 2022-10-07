import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/theme_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CarroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                    'Carros',
                  ),
                )
              ],
            )),
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              color: ThemeApp.cinza,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        style: GoogleFonts.comfortaa(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                        ),
                        'Seja Bem-vindo \nControl Car',
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Image.asset(
                      'images/carro.png',
                      height: 106,
                      width: 152,
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    child: Text(
                      style: GoogleFonts.comfortaa(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      'Escolha seu Carro',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
