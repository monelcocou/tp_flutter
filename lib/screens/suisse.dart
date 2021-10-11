import 'package:flutter/material.dart';

class Suisse extends StatefulWidget {
  const Suisse({Key? key}) : super(key: key);

  @override
  _SuisseState createState() => _SuisseState();
}

class _SuisseState extends State<Suisse> {
  String _like = '0';
  Icon _iconData = Icon(Icons.star_border, color: Colors.orange, size: 30);
  bool _etatLike = false;

  void _iconChange() {
    setState(() {
      if (_etatLike == true) {
        _iconData = Icon(Icons.star_border, color: Colors.orange, size: 30);
        _etatLike = false;
        _like = '0';
      } else {
        _iconData = Icon(Icons.star, color: Colors.orange, size: 30);
        _etatLike = true;
        _like = '1';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Image(
            image: AssetImage('images/ic_suisse.jpg'),
            fit: BoxFit.fill,
            repeat: ImageRepeat.noRepeat,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Oeschinen Lake Campground',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: _iconChange,
                      icon: _iconData,
                    ),
                    Text(
                      _like,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'CALL',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueAccent,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.settings_input_composite_outlined,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'ROUTE',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueAccent,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.share,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'SHARE',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueAccent,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    ));
  }
}
