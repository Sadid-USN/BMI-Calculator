import 'package:bmi_calculate/TabBars/BmiTabBar.dart';
import 'package:bmi_calculate/TabBars/advice.dart';
import 'package:bmi_calculate/hexColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @required
  TextEditingController _heightController = TextEditingController();
  @required
  TextEditingController _weightController = TextEditingController();
  @required
  TextEditingController _sexController = TextEditingController();
  @required
  TextEditingController _ageController = TextEditingController();
  double _bmiResoult = 0;
  Widget _textResult = Text('');

  void clearState() {
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    _sexController = TextEditingController();
    _ageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          // bottomNavigationBar: BottomNavigationBar(

          // items: [
          // BottomNavigationBarItem(icon: Icon(Icons.logout, size: 35,)),

          // ],),
          resizeToAvoidBottomInset: false, // устраняет overflow уведомление
          backgroundColor: screenColor,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 25,
                  ),
                  child: Text("Домой", style: TextStyle(fontSize: 18)),
                ),
                Tab(
                  icon: Icon(Icons.article),
                  child: Text(
                    'BMI',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.lightbulb),
                  child: Text('Советы', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.3,
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  fontSize: 33,
                  color: accentHexcolor,
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://img5.goodfon.ru/wallpaper/nbig/3/b2/mzhchina-siluet-chiornoe-sport-sila.jpg',
                      ),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              padding: EdgeInsets.only(left: 15, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(.2),
                                      spreadRadius: 2.0,
                                      blurRadius: 3.0),
                                ],
                              ),
                              width: 130,
                              child: TextField(
                                controller: _heightController,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300,
                                ),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Рост 0.00',
                                  hintStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white.withOpacity(.9),
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.only(left: 15, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(.2),
                                      spreadRadius: 2.0,
                                      blurRadius: 3.0),
                                ],
                              ),
                              width: 130,
                              child: TextField(
                                controller: _sexController,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300,
                                ),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Пол  M/Ж',
                                  hintStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white.withOpacity(.9),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.only(left: 15, bottom: 5),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white.withOpacity(.2),
                                          spreadRadius: 2.0,
                                          blurRadius: 3.0),
                                    ],
                                  ),
                                  width: 130,
                                  child: TextField(
                                    controller: _weightController,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Вес',
                                      hintStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white.withOpacity(.9),
                                      ),
                                    ),
                                  ),
                                ),
                                //FIELD AGE
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.only(left: 15, bottom: 5),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white.withOpacity(.2),
                                          spreadRadius: 2.0,
                                          blurRadius: 3.0),
                                    ],
                                  ),
                                  width: 130,
                                  child: TextField(
                                    controller: _ageController,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Возраст',
                                      hintStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white.withOpacity(.9),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),

                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        _bmiResoult.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.yellow,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      child: _textResult,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              height: 42,
                              color: Colors.green.withOpacity(.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              enableFeedback: true,
                              elevation: 5,
                              splashColor: Colors.yellow,
                              onPressed: () {
                                double _height =
                                    double.parse(_heightController.text);
                                double _weight =
                                    double.parse(_weightController.text);
                                double _age = double.parse(_ageController.text);

                                setState(() {
                                  _bmiResoult = _weight / (_height * _height);

                                  if (_bmiResoult > 24.99 && _age >= 20) {
                                    clearState();

                                    _textResult = Text(
                                      'У вас избыточный вес \n'
                                      'You are overweight \n'
                                      'Шумо вазни зиёдатӣ доред',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    );
                                  } else if (_bmiResoult >= 18.5 &&
                                      _bmiResoult <= 25) {
                                    clearState();
                                    _textResult = Text(
                                      'Ваш вес соответствует вашему росту \n'
                                      'Your weight matches your height \n'
                                      'Вазни шумо ба қомати шумо мувофиқат мекунад',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    );
                                  } else if (_ageController !=
                                      TextEditingController()) {
                                    _bmiResoult = 0.0;
                                    _textResult = AlertDialog(
                                      actionsOverflowDirection:
                                          VerticalDirection.up,
                                      titlePadding: EdgeInsets.all(5),
                                      scrollable: true,
                                      backgroundColor:
                                          Colors.red.withOpacity(.7),
                                      title: Text(
                                        ' Вы оставили поле пустым\n либо не указали точку\n указывая свой рост  0.00',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    );
                                  } else {
                                    clearState();
                                    _textResult = Text(
                                      'У вас дефицит веса \n'
                                      'You are underweight \n'
                                      'Шумо камвазнед',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    );
                                  }
                                });
                              },
                              child: Text('Посчитать',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          //REFRESH BUTTON
                          FloatingActionButton(
                            backgroundColor: Colors.green.withOpacity(.3),
                            splashColor: Colors.green,
                            mini: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              setState(() {
                                _heightController = TextEditingController();
                                _weightController = TextEditingController();
                                _sexController = TextEditingController();
                                _ageController = TextEditingController();
                                _bmiResoult = 0;
                                _textResult = Text('');
                              });
                            },
                            child: Icon(
                              Icons.refresh,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SECOND TABBARVIEW
            BMItabBar(),
            Advices(),
          ]),
        ),
      );
    
  }
}
