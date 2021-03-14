import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'second_page.dart';

enum Gender { Male, Female }
Gender gender;

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double result;
  int height = 170;
  int age = 25;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = Gender.Male;
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 50,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: gender == Gender.Male ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = Gender.Female;
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 50,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: gender == Gender.Female
                          ? Colors.pink[300]
                          : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              )
            ],
          ),
          Container(
            height: 150,
            width: 400,
            margin: EdgeInsets.only(left: 28, right: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Height',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('cms')
                  ],
                ),
                Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      print(newValue);
                      setState(() {
                        height = newValue.round();
                      });
                    })
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Age',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Years')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.minusCircle,
                              size: 40,
                            ),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.plusCircle,
                              size: 40,
                            ),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Weight',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Kgs')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.minusCircle,
                              size: 40,
                            ),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.plusCircle,
                              size: 40,
                            ),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              )
            ],
          ),
          RaisedButton(
            onPressed: () {
              result = (weight / (height * height)) * 10000;
              print('result');
              print(result);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                            bmiResult: result,
                          )));
            },
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10),
            color: Colors.red,
            child: Text(
              'Calculate BMI',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
