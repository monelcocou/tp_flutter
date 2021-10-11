import 'package:flutter/material.dart';

class LesOperations extends StatefulWidget {
  const LesOperations({Key? key}) : super(key: key);

  @override
  _LesOperationsState createState() => _LesOperationsState();
}

class _LesOperationsState extends State<LesOperations> {
  String? operateurChoisi = '+';
  var Mesitems = <String>['+', '-', '*', '/', '%'];
  String _valeurTF1 = '';
  String _valeurTF2 = '';
  String _resultOperation = '';

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Les opérations mathématiques'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: sizeX,
                child: const Text(
                  'Allez-y! Posez votre opération!.',
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
                  //color: Color(0xFFFFFFFF),
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
                                _valeurTF1 = value;
                              });
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(hintText: 'First Number'),
                          ),
                        ),
                        DropdownButton(
                          onChanged: (String? value) {
                            setState(() {
                              operateurChoisi = value;
                            });
                          },
                          value: operateurChoisi,
                          items: Mesitems.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                            width: sizeX / 3,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _valeurTF2 = value;
                                });
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(hintText: 'Second Number'),
                            ))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        child: const Text('Calculer Maintenant!'),
                        onPressed: () {
                          setState(() {
                            _resultOperation = CalculOperation(
                                _valeurTF1, _valeurTF2, operateurChoisi!);
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
                      'Le résultat de l\'opération est : $_resultOperation',
                      style: TextStyle(color: Colors.teal, fontSize: 20),
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

  String CalculOperation(String value1, String value2, String operateur) {
    double resultat = 0;
    // switch (operateur)
    // {
    //   case '+'
    //       resultat = value1 + value 2;
    // }
    if (operateur == '+') {
      resultat = double.parse(value1) + double.parse(value2);
    } else if (operateur == '-') {
      resultat = double.parse(value1) - double.parse(value2);
    } else if (operateur == '*') {
      resultat = double.parse(value1) * double.parse(value2);
    } else if (operateur == '/') {
      resultat = double.parse(value1) / double.parse(value2);
    } else if (operateur == '%') {
      resultat = double.parse(value1) % double.parse(value2);
    }

    return resultat.toString();
  }
}
