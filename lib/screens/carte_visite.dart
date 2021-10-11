import 'package:flutter/material.dart';

class CarteDeVisite extends StatefulWidget {
  const CarteDeVisite({Key? key}) : super(key: key);

  @override
  _CarteDeVisiteState createState() => _CarteDeVisiteState();
}

class _CarteDeVisiteState extends State<CarteDeVisite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009788),
      body: SafeArea(
        child : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              child: Image(
                image: AssetImage('images/ic_person1.png'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                'Monel Cocou GAFFAN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                'FLUTTER DEVELOPPER',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, left: 140, right: 140),
              child: const Divider(
                color: Colors.white70,
                thickness: 1,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.only(left: 30, top: 15, right: 30),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Color(0xFF009788),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text(
                            '+229 97 15 85 19',
                            style: TextStyle(
                                color: Color(0xFF009788),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail,
                        color: Color(0xFF009788),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text(
                            'monelcocou@gmail.com',
                            style: TextStyle(
                                color: Color(0xFF009788),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),)

    );
  }
}
