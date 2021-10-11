import 'package:flutter/material.dart';
import 'package:tp_flutter/screens/calcul_imc.dart';
import 'package:tp_flutter/screens/carte_visite.dart';
import 'package:tp_flutter/screens/convert_devise.dart';
import 'package:tp_flutter/screens/les_operations.dart';
import 'package:tp_flutter/screens/my_layout.dart';
import 'package:tp_flutter/screens/suisse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/les_operations': (context) => const LesOperations(),
        '/my_layout': (context) => const MyLayout(),
        '/carte_visite': (context) => const CarteDeVisite(),
        '/suisse': (context) => const Suisse(),
        '/imc': (context) => const CalculIMC(),
        '/devise': (context) => const ConvertDevise(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TP FLUTTER'),
      ),
      body: const Center(
        child: Text(
          'TP FLUTTER',
          style: TextStyle(
              fontSize: 50.0,
              color: Colors.indigo,
              fontWeight: FontWeight.w800),
        ),
      ),
      drawer: Menu(),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color myColor = Colors.red;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: const [
                CircleAvatar(
                  child: Image(
                    image: AssetImage('images/ic_person1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Text('Monel Cocou GAFFAN',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                    )),
                Text('Développeur informatique',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ))
              ],
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/ic_drawer.png'),
              fit: BoxFit.fill,
              repeat: ImageRepeat.noRepeat,
            )),
          ),
          // decoration: BoxDecoration(color: myColor),
          // child: Center(
          //   child: Text(
          //     'ALL EXERCISES',
          //     style: TextStyle(
          //         color: Colors.white70,
          //         fontSize: 36.0,
          //         fontWeight: FontWeight.bold),
          //   ),
          // )),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/les_operations');
            },
            title: const Text('Les opérations'),
            leading: const Icon(Icons.add, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/imc');
            },
            title: const Text('Calcul de l\'IMC'),
            leading: const Icon(Icons.monitor_weight, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/devise');
            },
            title: const Text('Conversion devise'),
            leading: const Icon(Icons.attach_money, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          const Divider(
            color: myColor,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/suisse');
            },
            title: const Text('Paysage suisse'),
            leading: const Icon(Icons.fullscreen_exit_outlined, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/carte_visite');
            },
            title: const Text('Carte de visite'),
            leading: const Icon(Icons.person_add_alt_1_sharp, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/my_layout');
            },
            title: const Text('Flutter Layout'),
            leading:
                const Icon(Icons.settings_display_outlined, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/');
            },
            title: const Text('Liste des scores'),
            leading: const Icon(Icons.filter_list, color: myColor),
            trailing: const Icon(
              Icons.arrow_right,
              color: myColor,
            ),
          ),
        ],
      ),
    );
  }
}
