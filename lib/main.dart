import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,

      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: (30.0),
                      bottom: (20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'PIG WEIGHT',
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.pinkAccent),
                        ),
                        Text(
                          'CALCULATOR',
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.pinkAccent),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/pig.png', width: 300.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('LENGTH'),
                                          Text('(cm)'),
                                          TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white.withOpacity(0.7),

                                              hintText: 'Enter length',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('GRITH'),
                                          Text('(cm)'),

                                          TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white.withOpacity(0.7),

                                              hintText: 'Enter grith',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],


                          ),
                        ),
                      ],
                    ),
                  ),





                  ElevatedButton(
                    onPressed: () {},
                    child: Text('CALCULATE'),
                  ),
                ],
              ),
      ),
    );
  }
}