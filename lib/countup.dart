import 'package:flutter/material.dart';

class CountUpPage extends StatefulWidget {
  CountUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountUpPageState createState() => _CountUpPageState();
}

class _CountUpPageState extends State<CountUpPage> {
  int _score1 = 0;
  int prev = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: height * 0.1,
              child: Text("COUNTUP"),
            ),
            Row(
              children: [
                Container(
                  width: width * 0.3,
                  height: height * 0.6,
                  child: Center(
                    child: Column(
                      children: [
                        Text("1/8 ROUND SCORE"),
                        Text("R1"),
                        Text("R2"),
                        Text("R3"),
                        Text("R4"),
                        Text("R5"),
                        Text("R6"),
                        Text("R7"),
                        Text("R8"),
                        Container(
                          width: width * 0.3,
                          child: Center(
                            child: Column(
                              children: [
                                Text("DART & RESULT"),
                                Text("1"),
                                Text("2"),
                                Text("3"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width * 0.4,
                  height: height * 0.6,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "101",
                          style: TextStyle(
                              fontSize: 300, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ), // button
                Container(
                  width: width * 0.3,
                  child: Center(
                    child: Column(
                        children: List.generate(5, (index) => index)
                                .map(
                                  (i) => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(4,
                                            (index) => 21 - (index + 1 + i * 4))
                                        .map(
                                          (value) => Padding(
                                            padding: EdgeInsets.all(5),
                                            child: ElevatedButton(
                                              child: Text('${value}'),
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
                                        )
                                        .toList(),
                                  ),
                                )
                                .toList() +
                            [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  child: Text('x2'),
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
                            ]),
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                height: height * 0.1,
                child: Text("THROW DARTS!"),
              ),
            ),
            Row(
              children: [
                Container(
                  width: width * 0.5,
                  height: height * 0.2,
                  color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("101 ",
                          style: TextStyle(fontSize: 100, color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.5,
                  height: height * 0.2,
                  color: Colors.black87,
                  child: Row(
                    children: [
                      Text(
                        " 81",
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
