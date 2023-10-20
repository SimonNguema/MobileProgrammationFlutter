import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterproject/increment.dart';
import 'package:flutterproject/test.dart';

class MyDecrementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Page Decrementation'),
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
                Provider.of<CounterProvider>(context, listen: false).decrement();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),

              ),

              child: Icon(Icons.remove),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyIncrementPage(),
                ));
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
