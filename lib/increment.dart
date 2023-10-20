import 'package:flutter/material.dart';
import 'package:flutterproject/test.dart';
import 'package:provider/provider.dart';
import 'package:flutterproject/decrement.dart';

class MyIncrementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Page Incrementation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Compteur: ${Provider.of<CounterProvider>(context).counter}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).increment();  //  Vous utilisez Provider.of pour accéder à l'instance de CounterProvider
              },

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),

              ),
              child: Icon(Icons.add),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyDecrementPage(),
                ));
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
