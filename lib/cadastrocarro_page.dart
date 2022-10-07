import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/theme_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroCarro extends StatelessWidget {
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
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Marca'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Modelo'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Ano'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'placa opcional'),
                ),
              ],
            )),
          ),
        )
      ]),
    );
  }
}
