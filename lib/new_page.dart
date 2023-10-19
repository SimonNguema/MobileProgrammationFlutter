import 'package:flutter/material.dart';

class MyNewPage extends StatefulWidget {
  @override
  _MyNewPageState createState() => _MyNewPageState();
}

class _MyNewPageState extends State<MyNewPage> {
  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demonstration de navigation entre mes deux pages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nouvelle Page',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),

              ),
              onPressed: () => _decrementCounter(),
              child: Icon(Icons.remove, color: Colors.blue,),

            ),

            //SizedBox(height: 30,),

           // ElevatedButton(
              //onPressed: () {
               // Navigator.of(context).pop();
              //},
             // child: Icon(Icons.arrow_back),
              //style: ElevatedButton.styleFrom(
               // alignment: Alignment.bottomCenter,
              //),
           // ),

          ],
        ),
      ),
    );
  }
}
