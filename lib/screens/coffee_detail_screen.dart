import 'package:flutter/material.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  static const String routeName = 'details-screen/';
  const CoffeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        title: const Text('Cappuccino'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(left: 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Image.asset(
                'images/coffee.jpg',
                height: 240,
                width: 240,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 180),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 5),
                  child: Text(
                    'COFFEE',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Text(
                  'Cappuccino',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                const Text(
                  'A cappuccino is an espresso-based coffee drink that is traditionally prepared with steamed milk foam.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                  maxLines: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '\$10.90',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(149, 245, 200, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Colors.yellow[900],
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.yellow[900],
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.yellow[900],
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('ORDER NOW'),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 160,
            left: 300,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromARGB(255, 65, 65, 65),
                    blurRadius: 20,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: IconButton(
                onPressed: () {
                  print('Add to favorite.');
                },
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
