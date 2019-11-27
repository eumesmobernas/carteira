import 'package:flutter/material.dart';

Widget bigButton(dynamic blabla,String texto, double height, double width){
return Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.white),
                        child: Builder(
                          builder: (context) => RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => blabla()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(100)),
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                texto,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8185E2),
                                ),
                              ),
                            ),
                          ),
                        ),
 );

}