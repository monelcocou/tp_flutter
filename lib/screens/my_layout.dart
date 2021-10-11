import 'package:flutter/material.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    double margin = 10;
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;
    return SafeArea(
      // appBar: AppBar(
      //   title: const Text('My Layout'),
      // ),

      child: Container(
        color: Colors.white,
        width: sizeX,
        height: sizeY,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: sizeX / 2,
                        height: sizeY / 3,
                        margin: EdgeInsets.all(margin),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1d1e32),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: sizeX / 2,
                        height: sizeY / 3,
                        margin: EdgeInsets.all(margin),
                        decoration: const BoxDecoration(
                          color: Color(0xFFf1492f),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                    width: sizeX,
                    height: sizeY / 3,
                    margin: EdgeInsets.all(margin),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1d1e32),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ))),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: sizeX / 2,
                        height: sizeY / 3,
                        margin: EdgeInsets.all(margin),
                        decoration: const BoxDecoration(
                          color: Color(0xFF189587),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: sizeX / 2,
                        height: sizeY / 3,
                        margin: EdgeInsets.all(margin),
                        decoration: const BoxDecoration(
                          color: Color(0xFF2094fb),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
