import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final double bmiResult;

  const SecondPage({Key key, this.bmiResult}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('BMI Result'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Body Mass Index Result is :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              bmiResult.toStringAsFixed(1) + ' kg/m2',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Text(
              'Healthy BMI range: 18.5 kg/m2 - 25 kg/m2',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
              child: Text(
                'Recalculate',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
