import 'package:flutter/material.dart';

class ConvertDevise extends StatefulWidget {
  const ConvertDevise({Key? key}) : super(key: key);

  @override
  _ConvertDeviseState createState() => _ConvertDeviseState();
}

class _ConvertDeviseState extends State<ConvertDevise> {
  final _controllerCFA = TextEditingController();
  final _controllerDollars = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState(); //Appel du constructeur de la classe mère

    _controllerCFA.addListener(() {
      setState(() {
        _controllerDollars.text =
            (double.parse(_controllerCFA.text) * 0.0018).toString();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerCFA.dispose();
    _controllerDollars.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Devises'),
      ),
      body: Column(
        children: [
          Container(
            width: sizeX,
            margin: const EdgeInsets.only(top: 50, left: 10),
            child: const Text(
              'De la devise',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 10),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: sizeX * 0.45,
                  child: const TextField(
                    // onChanged: (value) {
                    //   setState(() {
                    //     // _valeurTF1 = value;
                    //   });
                    // },
                    // controller: _controllerCFA,
                    enabled: false,
                    decoration: InputDecoration(
                      label: Text('Franc CFA (BCEAO)'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: sizeX * .45,
                  child: TextField(
                    // onChanged: (value) {
                    //   setState(() {
                    //     _valueDollars =
                    //         (double.parse(value) * 0.0018).toString();
                    //   });
                    // },
                    controller: _controllerCFA,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: sizeX,
            margin: const EdgeInsets.only(top: 40, left: 10),
            child: const Text(
              'A la devise',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 10),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: sizeX * 0.45,
                  child: const TextField(
                    // onChanged: (value) {
                    //   setState(() {
                    //     // _valeurTF1 = value;
                    //   });
                    // },
                    enabled: false,
                    decoration: InputDecoration(
                      label: Text('Dollars des Etats Unis'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: sizeX * .45,
                  child: TextField(
                    controller: _controllerDollars,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: sizeX,
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: const Text(
              'Taux à compter du 30 sept. 2021 11:02',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            width: sizeX,
            margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: const Text(
              '* 1 XOF = 0,0018 USD',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

// decoration: new InputDecoration(
// border: new OutlineInputBorder(
// borderSide: new BorderSide(color: Colors.teal)),
// hintText: 'Tell us about yourself',
// helperText: 'Keep it short, this is just a demo.',
// labelText: 'Life story',
// prefixIcon: const Icon(
// Icons.person,
// color: Colors.green,
// ),
// prefixText: ' ',
// suffixText: 'USD',
// suffixStyle: const TextStyle(color: Colors.green)),
// )
