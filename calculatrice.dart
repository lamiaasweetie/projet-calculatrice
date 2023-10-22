import 'package:flutter/material.dart';
import 'image.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key, required String title});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 125, 196),
        title: const Text("Ma Calculatrice",
            style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Color.fromARGB(255, 235, 230, 230),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('1'),
                        child: const Text('1',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('4'),
                        child: const Text('4',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('7'),
                        child: const Text('7',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('2'),
                        child: const Text('2',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('5'),
                        child: const Text('5',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('8'),
                        child: const Text('8',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('3'),
                        child: const Text('3',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('6'),
                        child: const Text('6',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 191, 233),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () => _updatenumber('9'),
                        child: const Text('9',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 143, 191, 233),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () => _updatenumber('0'),
                child: const Text('0', style: TextStyle(color: Colors.white)),
              ),
            ),
            Text(
              _number,
              style: const TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 233, 143, 163)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => image()));
              },
              child: const Text('Voir l\'image'),
            ),
          ],
        ),
      ),
    );
  }
}
