import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eduprog Game Math',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _level = 0;
  String _descLevel = "Belum TK";

  double wp(Size sz, double perc){
    return sz.width * (perc / 100);
  }

  double hp(Size sz, double perc){
    return sz.height * (perc / 100);
  }

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: Color.fromRGBO(230, 230, 234, 1.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: hp(sz, 24),
                  width: wp(sz, 41.6),
                  child: FittedBox(
                    child: Image.asset('assets/abil.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                alignment: Alignment.center,
                child: Text("Game Matematika Nabila", style: TextStyle(fontSize: hp(sz, 2.9), fontWeight: FontWeight.bold, color: Colors.lightBlue),),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, ),
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, color: Colors.lightBlue)
                    ]
                ),

                child: Text("Pilih Level", style: TextStyle(fontSize: hp(sz, 2.9), fontWeight: FontWeight.bold, color: Colors.black),),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 0;
                              _descLevel = "Belum TK";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("0", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 0 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 0 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 1;
                              _descLevel = "TK Kecil";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("1", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 1 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: _level == 1 ? Colors.red : Colors.transparent,
                          )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 2;
                              _descLevel = "TK Sedang";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("2", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 2 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 2 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 3;
                              _descLevel = "TK Besar";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("3", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 3 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 3 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(_descLevel, style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue
                ),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Colors.grey.withOpacity(0.3),
                )
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Icon(Icons.school, size: hp(sz, 5.8),),
              ),
              SizedBox(height: hp(sz, 3.5),),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyGame(level: _level,

                              )
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange,

                        ),

                        child: Text("Mulai Sekarang", style: TextStyle(fontSize: hp(sz, 2.1), fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}


class MyGame extends StatefulWidget{
  MyGame({Key key, this.level}) : super(key: key);

  final int level;

  @override
  _MyGameState createState() => _MyGameState();
}

class _WidgetNumberState extends State<WidgetNumber>{
  Color _color = Colors.grey[200];
  String numToText(int n){
    switch(n){
      case 0:return "Zero";
      case 1:return "One";
      case 2:return "Two";
      case 3:return "Three";
      case 4:return "Four";
      case 5:return "Five";
      case 6:return "Six";
      case 7:return "Seven";
      case 8:return "Eight";
      case 9:return "Nine";
      case 10:return "Ten";
      case 11:return "Eleven";
      case 12:return "Twelve";
      case 13:return "Thirteen";
      case 14:return "Fourteen";
      case 15:return "Fiveteen";
      case 16:return "Sixteen";
      case 17:return "Seventeen";
      case 18:return "Eighteen";
      case 19:return "Nineteen";
      case 10:return "Twenty";
      default:return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "${widget.number.toString()}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),

          ),
          decoration: BoxDecoration(
            color: _color,
            border: Border.all(color: Colors.black87, ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30),
        ),
        SizedBox(height: 5,),
        Container(
          child: Text(
            "(${numToText(widget.number)})", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),

          ),
        ),
      ],
    );
  }

  void resetColor(){
    setState(() {
      _color = Colors.grey[200];
    });
  }

  void setColor(Color col){
    setState(() {
      _color = col;
    });
  }

  void setNumber(int num){
    setState(() {
      widget.number = num;
    });
  }


  @override
  void initState() {

    super.initState();
  }
}
class WidgetNumber extends StatefulWidget{
  WidgetNumber({Key key, this.number}) : super(key: key);

  int number;

  _WidgetNumberState state;

  @override
  _WidgetNumberState createState() => state = _WidgetNumberState();


}

class _MyGameState extends State<MyGame> {
  Size _size = null;
  Timer _timerWaktu;
  double _timerProgress = 0;
  double _timeLevel = 0;
  double _timeLevelRemain;
  bool _gameStart = false;
  bool _gameOver = false;
  int _totalBintang = 0;
  int _score = 0;
  int _soalNo = 0;
  String _keterangan = "";
  int _var_soal1 = 0;
  int _var_soal2 = 0;
  int _var_opsi1 = 0;
  int _var_opsi2 = 0;
  int _var_opsi3 = 0;
  int _var_opsi4 = 0;

  WidgetNumber w1;
  WidgetNumber w2;
  WidgetNumber w3;
  WidgetNumber w4;

  void generateSoal(){
    var rng = new Random();
    _var_soal1 = rng.nextInt(9);
    _var_soal2 = rng.nextInt(9);

    if (_var_soal1 == 0){
      _var_soal1 = 1;
    }
    if (_var_soal2 == 0){
      _var_soal2 = 1;
    }

    if (_var_soal1 + _var_soal2 <= 2){
      _var_soal1++;
      _var_soal2++;
    }

    int _r = rng.nextInt(3);

    if (_r == 0){
      _var_opsi1 = (_var_soal1 + _var_soal2);
      _var_opsi2 = (_var_soal1 + _var_soal2) - 1;
      _var_opsi3 = (_var_soal1 + _var_soal2) + 1;
      _var_opsi4 = (_var_soal1 + _var_soal2) + 2;
    }else if (_r == 1){
      _var_opsi1 = (_var_soal1 + _var_soal2) - 1;
      _var_opsi2 = (_var_soal1 + _var_soal2);
      _var_opsi3 = (_var_soal1 + _var_soal2) + 2;
      _var_opsi4 = (_var_soal1 + _var_soal2) + 1;
    }else if (_r == 2){
      _var_opsi1 = (_var_soal1 + _var_soal2) - 2;
      _var_opsi2 = (_var_soal1 + _var_soal2) - 1;
      _var_opsi3 = (_var_soal1 + _var_soal2) + 1;
      _var_opsi4 = (_var_soal1 + _var_soal2);
    }else{
      _var_opsi1 = (_var_soal1 + _var_soal2) - 1;
      _var_opsi2 = (_var_soal1 + _var_soal2) - 2;
      _var_opsi3 = (_var_soal1 + _var_soal2);
      _var_opsi4 = (_var_soal1 + _var_soal2) + 1;
    }

    w1.state.resetColor();
    w2.state.resetColor();
    w3.state.resetColor();
    w4.state.resetColor();

    w1.state.setNumber(_var_opsi1);
    w2.state.setNumber(_var_opsi2);
    w3.state.setNumber(_var_opsi3);
    w4.state.setNumber(_var_opsi4);

//    w1 = WidgetNumber(number: _var_opsi1,);
//    w2 = WidgetNumber(number: _var_opsi2,);
//    w3 = WidgetNumber(number: _var_opsi3,);
//    w4 = WidgetNumber(number: _var_opsi4,);

    setState(() {

    });
  }
  List<Widget> getBintang(){
    List<Widget> ret = [];
    for (int i = 0 ; i < _totalBintang; i++){
      ret.add(Icon(Icons.star, color: Colors.yellow, size: 30.0,));
    }

    return ret;
  }

  void showAlert(BuildContext context, String title, String content){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("$title", style: TextStyle(color: Colors.blue, fontSize: 20),),
          content: Text("$content", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Tutup"),
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _size = size;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _gameOver? Container(
            alignment: Alignment.center,
              child: FlatButton.icon(onPressed: (){
                _totalBintang = 0;
                _gameOver = false;
                _gameStart = true;
                if (widget.level == 0){
                  _timeLevel = 20;
                }else if (widget.level == 1){
                  _timeLevel = 15;
                }else if (widget.level == 2){
                  _timeLevel = 10;
                }else{
                  _timeLevel = 5;
                }
                _timeLevelRemain = _timeLevel;
                Future.delayed(Duration(milliseconds: 500), (){
                  _soalNo = 1;

                  _gameStart = true;
                  _timerProgress = _size.width;
                  generateSoal();
                  startTimerWaktu();
                });
              }, icon: Icon(Icons.refresh, color: Colors.red,), label: Text("Klik Mulai Lagi", style: TextStyle(color: Colors.red),),),
          ) : Container(

          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(blurRadius: 2.0, color: Colors.grey)
              ]),
            child: Text("Soal No #$_soalNo", style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 100, 126, 1.0),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(blurRadius: 2.0, color: Colors.red)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              WidgetNumber(number: _var_soal1,),
              SizedBox(width: 10,),
              Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "+", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    child: Text(
                      "Plus", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),

                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              WidgetNumber(number: _var_soal2,),
            ],),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(blurRadius: 2.0, color: Colors.grey)
                ]),
            child: Text("Pilih Jawaban", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  InkWell(
                    child: w1,
                    onTap: (){
                      if (_gameOver)return;
                      if ((_var_soal1 + _var_soal2) == _var_opsi1){
                        w1.state.setColor(Colors.green);
                      }else{
                        w1.state.setColor(Colors.red);
                      }

                      Future.delayed(Duration(milliseconds: 200), (){
                        if ((_var_soal1 + _var_soal2) == _var_opsi1){
                          _score++;
                        }else{
                          _gameOver = true;
                          _keterangan = "Jawaban Salah";
                          showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                          _timerWaktu.cancel();
                          setState(() {

                          });
                          return;
                        }

                        if (_soalNo == 50){ //. habis
                          _gameOver = true;
                          _keterangan = "Soal Selesai";
                          showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                          _timerWaktu.cancel();
                          setState(() {

                          });
                          return;
                        }
                        _soalNo++;
                        _totalBintang = (_score / 10).toInt();
                        resetWaktu();
                        generateSoal();
                      });


                    },

                  ),

                  InkWell(
                    child: w2,
                    onTap: (){
                      if (_gameOver) return;
                      if ((_var_soal1 + _var_soal2) == _var_opsi2){
                        w2.state.setColor(Colors.green);
                      }else{
                        w2.state.setColor(Colors.red);
                      }

                      Future.delayed(Duration(milliseconds: 200), (){
                        if ((_var_soal1 + _var_soal2) == _var_opsi2){
                          _score++;
                          _keterangan = "Benar";
                        }else{
                          _gameOver = true;
                          _keterangan = "Jawaban Salah";
                          showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                          _timerWaktu.cancel();
                          setState(() {

                          });
                          return;
                        }
                        if (_soalNo == 50){ //. habis
                          _gameOver = true;
                          _keterangan = "Soal Selesai";
                          showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                          _timerWaktu.cancel();
                          setState(() {

                          });
                          return;
                        }
                        _soalNo++;
                        _totalBintang = (_score / 10).toInt();
                        resetWaktu();
                        generateSoal();
                      });


                    },

                  ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: w3,
                      onTap: (){
                        if (_gameOver) return;
                        if ((_var_soal1 + _var_soal2) == _var_opsi2){
                          w3.state.setColor(Colors.green);
                        }else{
                          w3.state.setColor(Colors.red);
                        }

                        Future.delayed(Duration(milliseconds: 200), (){
                          if ((_var_soal1 + _var_soal2) == _var_opsi3){
                            _score++;
                            _keterangan = "Benar";
                          }else{
                            _gameOver = true;
                            _keterangan = "Jawaban Salah";
                            showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                            _timerWaktu.cancel();
                            setState(() {

                            });
                            return;
                          }
                          if (_soalNo == 50){ //. habis
                            _gameOver = true;
                            _keterangan = "Soal Selesai";
                            showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                            _timerWaktu.cancel();
                            setState(() {

                            });
                            return;
                          }
                          _soalNo++;
                          _totalBintang = (_score / 10).toInt();
                          resetWaktu();
                          generateSoal();
                        });


                      },

                    ),

                    InkWell(
                      child: w4,
                      onTap: (){
                        if (_gameOver) return;
                        if ((_var_soal1 + _var_soal2) == _var_opsi4){
                          w4.state.setColor(Colors.green);
                        }else{
                          w4.state.setColor(Colors.red);
                        }

                        Future.delayed(Duration(milliseconds: 200), (){
                          if ((_var_soal1 + _var_soal2) == _var_opsi4){
                            _score++;
                            _keterangan = "Benar";
                          }else{
                            _gameOver = true;
                            _keterangan = "Jawaban Salah";
                            showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                            _timerWaktu.cancel();
                            setState(() {

                            });
                            return;
                          }
                          if (_soalNo == 50){ //. habis
                            _gameOver = true;
                            _keterangan = "Soal Selesai";
                            showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
                            _timerWaktu.cancel();
                            setState(() {

                            });
                            return;
                          }
                          _soalNo++;
                          _totalBintang = (_score / 10).toInt();
                          resetWaktu();
                          generateSoal();
                        });


                      },

                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Text("Score Kamu", style: TextStyle(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.center,
                        child: Text("$_score", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Text("Bintang Kamu", style: TextStyle(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: getBintang(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.black)),
            child: Text("Sisa Waktu", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          Stack(//. color: Color.fromRGBO(255, 100, 126, 1.0)
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 40,
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.decelerate,
                alignment: Alignment.center,
                height: 40,
                width: _timerProgress,
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 100, 126, 1.0),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text("${_timeLevelRemain.toStringAsFixed(0)} Detik", style: TextStyle(
                    fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red)),
            child: Text("$_keterangan", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),


        ],
      ),
    );
  }

  @override
  void dispose() {
    _timerWaktu.cancel();
    super.dispose();
  }
  @override
  void initState() {
    if (widget.level == 1){
      _timeLevel = 15;
    }else if (widget.level == 2){
      _timeLevel = 10;
    }else{
      _timeLevel = 5;
    }
    _timeLevelRemain = _timeLevel;
    w1 = WidgetNumber(number: _var_opsi1,);
    w2 = WidgetNumber(number: _var_opsi2,);
    w3 = WidgetNumber(number: _var_opsi3,);
    w4 = WidgetNumber(number: _var_opsi4,);
    Future.delayed(Duration(milliseconds: 500), (){
      _soalNo = 1;

      _gameStart = true;
      _timerProgress = _size.width;
      generateSoal();
      startTimerWaktu();
    });

    super.initState();
  }

  void resetWaktu(){
    _timerProgress = _size.width;
    _timeLevelRemain = _timeLevel;
    setState(() {

    });

  }
  void startTimerWaktu(){
    _timerWaktu = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_timerProgress > 0){
        _timerProgress = _timerProgress - (_size.width / _timeLevel / 10);
        _timeLevelRemain = _timeLevelRemain - ( 1 / 10);
        if (_timerProgress < 0) _timerProgress = 0;
        if (_timeLevelRemain < 0) _timeLevelRemain = 0;
        //. waktu habis
        if (_timeLevelRemain == 0){
          _timerWaktu.cancel();
          _gameOver = true;
          _keterangan = "Waktu Habis";
          showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
        }


      }else{
        _timerWaktu.cancel();
        _gameOver = true;
        _keterangan = "Waktu Habis";
        showAlert(context, "Game Over", "$_keterangan, Kamu dapat score $_score, dan $_totalBintang bintang.");
      }
      setState(() {

      });
    });
  }
}
