import 'package:flutter/material.dart';
import 'ScoreModel.dart';

class CountUpPage extends StatefulWidget {
  CountUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountUpPageState createState() => _CountUpPageState();
}

class _CountUpPageState extends State<CountUpPage> {
  // プレイヤーごとにクラスを作成する。
  int latest_index1 = 0;
  int latest_index2 = 0;

  ScoreModel player1;
  ScoreModel player2;

  int scores1;

  int score1 = 990;
  int score2 = 0;

  int display = 0;
  double displayFontSize = 230;
  var displayFontColor = Colors.yellow[600];
  int player = 2;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (player == 1) {
      display = score1;
      displayFontColor = Colors.yellow[600];
    } else {
      display = score2;
      displayFontColor = Colors.blue;
    }
    if (display >= 1000) {
      setState(() {
        displayFontSize = 180;
      });
    }
    return Scaffold(
      backgroundColor: Colors.black54,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          "${display}",
                          style: TextStyle(
                              color: displayFontColor,
                              fontSize: displayFontSize,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ), // button
                Container(
                  width: width * 0.3,
                  child: Center(
                    child: Column(
                        children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('X2'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          var tmp = score1 + 13;
                                          score1 = tmp;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('X3'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          ////print(score1);
                                          var tmp = score1 + 13;
                                          score1 = tmp;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('BULL'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          ////print(score1);
                                          var tmp = score1 + 13;
                                          score1 = tmp;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('DBULL'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          ////print(score1);
                                          var tmp = score1 + 13;
                                          score1 = tmp;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ] +
                            List.generate(5, (index) => 4 - index)
                                .map(
                                  (i) => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(
                                            4, (index) => i * 4 + index + 1)
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
                                                  var tmp = score1 + value;
                                                  score1 = tmp;
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('C'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          ////print(score1);
                                          var tmp = score1 + 13;
                                          score1 = tmp;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      child: Text('NEXT'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.black,
                                        elevation: 16,
                                      ),
                                      onPressed: () {
                                        // 3本の点数を記入した後
                                        if (latest_index1 == 3 ||
                                            latest_index2 == 3) {
                                          setState(() {
                                            if (player == 1) {
                                              player = 2;
                                            } else {
                                              player = 1;
                                            }
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ]),
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                height: height * 0.1,
                width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("60",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    Text(" | ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    Text("60",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    Text(" | ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    Text("60",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                  ],
                ),
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
                      Text("${score1} ",
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
                        " ${score2}",
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
