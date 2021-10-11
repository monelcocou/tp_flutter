import 'dart:math';

import 'package:flutter/material.dart';

class CalculIMC extends StatefulWidget {
  const CalculIMC({Key? key}) : super(key: key);

  @override
  _CalculIMCState createState() => _CalculIMCState();
}

class _CalculIMCState extends State<CalculIMC> {
  String _valeurPoids = '';
  String _valeurTaille = '';
  String _resultOperation = '';

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Calcul ICM'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: sizeX,
                child: const Text(
                  'Veuillez renseigner les infos ci-dessous!!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xAADCDCDC),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: const EdgeInsets.only(left: 10, top: 30, right: 10),
                padding: const EdgeInsets.all(10),
                width: sizeX,
                height: 350,
                child: Center(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: sizeX / 3,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _valeurPoids = value;
                              });
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              label: Text('Poids (Kg)'),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: sizeX / 3,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _valeurTaille = value;
                                });
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                label: Text('Taille (m)'),
                              ),
                            ))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        child: const Text('Calculer votre IMC!'),
                        onPressed: () {
                          setState(() {
                            _resultOperation =
                                CalculIMC(_valeurPoids, _valeurTaille);
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 45, left: 40, right: 40, bottom: 30),
                      child: const Divider(
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      _resultOperation,
                      style: const TextStyle(color: Colors.teal, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 30, left: 40, right: 40, bottom: 0),
                      child: const Divider(
                        color: Colors.red,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ));
  }

  String CalculIMC(String v_poids, String v_taille) {
    String resultat = '';
    double imc = 0;

    imc = (double.parse(v_poids) / (pow(double.parse(v_taille), 2)))
        .roundToDouble();

    if (imc <= 18.5) {
      resultat = 'Votre IMC = $imc. Vous êtes maigre.';
    } else if (imc > 18.5 && imc <= 24.9) {
      resultat = 'Votre IMC = $imc. Vous avez une corpulence normale.';
    } else if (imc > 24.9 && imc <= 29.9) {
      resultat = 'Votre IMC = $imc. Vous avez en surpoids.';
    } else if (imc > 29.9 && imc <= 40) {
      resultat = 'Votre IMC = $imc. Vous êtes obèse.';
    } else if (imc > 40) {
      resultat = 'Votre IMC = $imc. Vous êtes massivement obèse.';
    }

    return resultat;
  }
}
