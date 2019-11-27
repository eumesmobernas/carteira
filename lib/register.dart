import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reflectly_flutter_loginpage/button.dart';
import 'package:reflectly_flutter_loginpage/delayed_animation.dart';


void main() {
  runApp(UserRegister());
}

class UserRegister extends StatefulWidget {
  UserRegister({Key key}) : super(key: key);

  @override
  _UserRegisterState createState() => _UserRegisterState();
}
final int delayedAmount = 100;
class _UserRegisterState extends State<UserRegister> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  
    Center(
          child: Stack(fit: StackFit.expand,
          children: <Widget>[
            Image.asset("imgs/euros.jpg", fit: BoxFit.fitHeight,),
          Scaffold(
              backgroundColor: Color(0xFFff9c46).withOpacity(0.90),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    DelayedAnimation(
                      child: Text(
                        "Precisamos saber um pouco de você!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                      delay: delayedAmount,
                    ),
                    SizedBox(height: 10,),
                     DelayedAnimation(
                      child: Text(
                        "você é:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.white),
                      ),
                      delay: delayedAmount + 100,
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 50),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   DelayedAnimation(
                     child: bigButton(UserRegister(), "Sou lojista!", 60, 160),
                      delay: delayedAmount + 300,
                    ),
                         SizedBox(width: 20),
                         DelayedAnimation(
                      child: bigButton(Comprador(), "Sou comprador!", 60, 180),
                      delay: delayedAmount + 300,
                    ),  
                      
                      ],
                        
                     )
                ]
                )
                
                  )
                    )
              
          
          ]
          
          )
    )
    );
  }

}

class Comprador extends StatefulWidget {
  @override
  _CompradorState createState() => _CompradorState();
}

class _CompradorState extends State<Comprador> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Stack( fit: StackFit.expand, children: <Widget>[
     Image.asset("imgs/euros.jpg", fit: BoxFit.fitHeight,),
    Scaffold(
      backgroundColor: Color(0xFFff9c46).withOpacity(0.9),
      appBar:AppBar(title: Text("Legal, vamos te cadastrar!", style: TextStyle(fontWeight: FontWeight.w600, 
          fontSize: 22, color: Colors.white, fontStyle: FontStyle.italic)), backgroundColor: Colors.transparent,
      elevation: 0, centerTitle: true,),
      body: 
    Column( mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
  
      Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20,),
      child: Container(
      child: TextField(textAlign: TextAlign.left,
      decoration: InputDecoration(labelText: "Seu nome",
      icon: Icon(Icons.person_outline, size: 35),
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100)), borderSide: BorderSide(width: 5)),
      filled: true,
      fillColor: Colors.grey[68] )
      )
    )
    ),
    SizedBox(height: 10,),
        Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Container(
      child: TextField(textAlign: TextAlign.left,
      decoration: InputDecoration(labelText: "Seu e-mail",
      filled: true,
      fillColor: Colors.grey[68],
      icon: Icon(Icons.mail_outline, size: 35),
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100)), borderSide: BorderSide(width: 5)),
    )
      )
    )
          
        ),
    SizedBox(height: 10,),
        Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Container(
      child: TextField(textAlign: TextAlign.left,
      decoration: InputDecoration(labelText: "Sua senha",
      icon: Icon(Icons.remove_red_eye, size: 35),
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100)), borderSide: BorderSide(width: 5)),
      filled: true,
      fillColor: Colors.grey[68]),
      )
      )
        ),
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Container(
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.white),
                        child:
                         Builder(
                          builder: (context) => RaisedButton(
                            onPressed: () {
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(100)),
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Prefiro com o google!',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8185E2),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
 Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.white),
                        child:
                         Builder(
                          builder: (context) => RaisedButton(
                            onPressed: () {
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(100)),
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Pronto!',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8185E2),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),


                    ],)
    ],
    
    ),

    )],
    
    )

    
    );
  }
}