import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reflectly_flutter_loginpage/button.dart';
import 'package:reflectly_flutter_loginpage/delayed_animation.dart';
import 'register.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 100;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Stack(fit: StackFit.expand,
          children: <Widget>[
            Image.asset("imgs/euros.jpg", fit: BoxFit.fitHeight,),
        
          Scaffold(
               
              backgroundColor: Color(0xFFff9c46).withOpacity(0.7),
              body: Center(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DelayedAnimation(
                      child: Text(
                        "Olá,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 500,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Eu sou o Budgety",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 1000,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "A mais nova forma",
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      delay: delayedAmount + 1500,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "de poupar dinheiro e",
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      delay: delayedAmount + 1500,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "divulgar sua loja",
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      delay: delayedAmount + 1500,
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    DelayedAnimation(
                      child: bigButton(UserRegister(), 'Quero começar agora!', 60, 270),
                      delay: delayedAmount + 2000,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Já possuo uma conta".toUpperCase(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: color),
                      ),
                      delay: delayedAmount + 2500,
                    ),
                  ],
                ),
              )
              ),
       ],
       ),
        ));
  }
}
