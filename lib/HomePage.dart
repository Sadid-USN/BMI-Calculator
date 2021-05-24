import 'package:bmi_calculate/raightBar.dart';
import 'package:flutter/material.dart';


import 'constans.dart';
import 'leftBar.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  TextEditingController _heigthController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  Widget _textResult = Text('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainHexColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 30, color: accentHexcolor, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heigthController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height',
                      hintStyle: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight',
                      hintStyle: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: TextStyle(fontSize: 90, color: accentHexcolor),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              child: _textResult,
            ),
            SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.grey,
                      Colors.deepOrange,
                    ]),
              ),
              child: MaterialButton(
                onPressed: () {
                  double _height = double.parse(_heigthController.text);
                  double _weight = double.parse(_weightController.text);
                  setState(() {
                    _bmiResult = _weight / (_height * _height);
                    if (_bmiResult > 25) {
                      _textResult = Text(
                        'You are overweight\nУ вас избыточный вес\nпредожирение',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: accentHexcolor),
                      );
                    } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                      _textResult = Text(
                        'Your weight matches your height\nВаш вес соответствует вашему росту',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: accentHexcolor),
                      );
                    } else {
                      _textResult = Text(
                        'You are underweight\nУ вас дефицит веса ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: accentHexcolor),
                      );
                    }
                  });
                },
                child: Text('Calculate',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: accentHexcolor)),
              ),
            ),

            SizedBox(height: 10),
            LeftBar(barWidth: 40),
            SizedBox(height: 20),
            LeftBar(barWidth: 70),
            SizedBox(height: 20),
            LeftBar(
              barWidth: 40,
            ),

            //RaightBar
            RaightBar(
              barWidth: 40,
            ),
            SizedBox(height: 30),
            RaightBar(
              barWidth: 40,
            ),
          ],
        ),
      ),
    );
  }
}
