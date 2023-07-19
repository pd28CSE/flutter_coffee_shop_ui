import 'package:flutter/material.dart';

import 'coffee_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home-screen/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/cover.jpg',
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                ),
                child: Text(
                  'IT\'S GREAT DAY FOR',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[900],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Coffee',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.coffee_outlined,
                    color: Colors.yellow[800],
                    size: 30,
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // maximumSize: Size.fromWidth(100),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.yellow[900],
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(CoffeeDetailsScreen.routeName);
                    },
                    child: const Text('Start'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
