import 'calculatrice.dart';
import 'package:flutter/material.dart';

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 125, 168),
        title: Text('Afficher Image'),
      ),
      backgroundColor: Color.fromARGB(255, 235, 230, 230),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 235, 230, 230),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'pageimage/lamiaa.jpg',
                width: 200,
                height: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const Calculatrice(title: 'Calculatrice lamiaa')));
                },
                child: const Text('Voici la calculatrice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
