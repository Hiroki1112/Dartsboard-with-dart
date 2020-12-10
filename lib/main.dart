import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _score1 = 0;
  int prev = 0;
@override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    return new Scaffold(
      body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(padding: EdgeInsets.all(40),
                        child: Text("${_score1}",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Theme.of(context).primaryColor,
                        ),),),
                        Row(
                        mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child:  Text('17'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 17;
                                   _score1 = tmp; 
                                   prev = 17;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('18'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 18;
                                   _score1 = tmp; 
                                   prev = 18;
                                  });},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('19'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 19;
                                   _score1 = tmp; 
                                   prev = 19;
                                  });},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('20'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 20;
                                   _score1 = tmp; 
                                   prev = 20;
                                  });},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('BULL'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 50;
                                   _score1 = tmp; 
                                   prev = 50;
                                  });},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('13'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 13;
                                   _score1 = tmp; 
                                   prev = 13;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('14'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 14;
                                   _score1 = tmp; 
                                   prev = 14;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('15'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 15;
                                   _score1 = tmp; 
                                   prev = 15;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('16'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 16;
                                   _score1 = tmp; 
                                   prev = 16;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('DBULL'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 50;
                                   _score1 = tmp; 
                                   prev = 50;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('9'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 9;
                                   _score1 = tmp; 
                                   prev = 9;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('10'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 10;
                                   _score1 = tmp; 
                                   prev = 10;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('11'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 11;
                                   _score1 = tmp; 
                                   prev = 11;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('12'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 12;
                                   _score1 = tmp; 
                                   prev = 12;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('×2'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + prev;
                                   _score1 = tmp; 
                                   prev = prev*2;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('5'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 5;
                                   _score1 = tmp; 
                                   prev = 5;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('6'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 6;
                                   _score1 = tmp; 
                                   prev = 6;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('7'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 7;
                                   _score1 = tmp; 
                                   prev = 7;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('8'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 8;
                                   _score1 = tmp; 
                                   prev = 8;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('×3'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + prev*2;
                                   _score1 = tmp; 
                                   prev = prev*3;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('1'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 1;
                                   _score1 = tmp; 
                                   prev = 1;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('2'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 2;
                                   _score1 = tmp; 
                                   prev = 2;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('3'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 3;
                                   _score1 = tmp; 
                                   prev = 3;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('4'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 + 4;
                                   _score1 = tmp; 
                                   prev = 4;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                child: const Text('C'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.black,
                                  elevation: 16,
                                ),
                                onPressed: () {
                                  setState(() {
                                    ////print(_score1);
                                    var tmp = _score1 - prev;
                                   _score1 = tmp; 
                                   prev = 0;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Padding(
                          padding: EdgeInsets.all(40),
                          child: RaisedButton(
                          child: const Text('保存'),
                          color: Colors.yellow,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {},
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40),
                          child: RaisedButton(
                          child: const Text('AC'),
                          color: Colors.yellow,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            setState(() {
                                    var tmp = 0;
                                   _score1 = tmp; 
                                   prev = 0;
                                  });
                          },
                        ),
                        )
                        ],),
                        
                        
                      ],
                    ),
      ),
    );
  }
}
