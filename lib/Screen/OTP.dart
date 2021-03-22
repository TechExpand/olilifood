import 'dart:async';
import 'package:flutter/material.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:provider/provider.dart';
import 'package:olilifood/Screen/RegisterName.dart';


class pass extends StatefulWidget {
  @override
  passState createState() => passState();
}

class passState extends State<pass> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static final TextEditingController controller1 = TextEditingController();
  static final TextEditingController controller2 = TextEditingController();
  static final TextEditingController controller3 = TextEditingController();
  static final TextEditingController controller4 = TextEditingController();
  static final TextEditingController controller5 = TextEditingController();
  static final TextEditingController controller6 = TextEditingController();

  Timer _timer;
  int _start = 100;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller1.selection = TextSelection.fromPosition(
        TextPosition(offset: controller1.text.length));
    controller2.selection = TextSelection.fromPosition(
        TextPosition(offset: controller2.text.length));
    controller3.selection = TextSelection.fromPosition(
        TextPosition(offset: controller3.text.length));
    controller4.selection = TextSelection.fromPosition(
        TextPosition(offset: controller4.text.length));
    controller5.selection = TextSelection.fromPosition(
        TextPosition(offset: controller5.text.length));
    controller6.selection = TextSelection.fromPosition(
        TextPosition(offset: controller6.text.length));
    var node = FocusScope.of(context);
    var data = Provider.of<DataProvider>(context);


    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.keyboard_backspace),
            color: Color(0xFF272b3f),
            onPressed: () {
                Navigator.pop(context);
            },)
      ),
      body:  Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter verification you recieved on',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF272b3f),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 10),
                child: Text(
                  '+234076858484',
                  style: TextStyle(
                 color:   Color(0xFF272b3f),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 0),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller1.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: true,
                            focus3: false,
                            focus4: false,
                            focus5: false,
                            focus6: false,
                          );
                          node.nextFocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller1,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: true,
                          focus2: false,
                          focus3: false,
                          focus4: false,
                          focus5: false,
                          focus6: false,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller2.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: false,
                            focus3: true,
                            focus4: false,
                            focus5: false,
                            focus6: false,
                          );
                          node.nextFocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller2,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: false,
                          focus2: true,
                          focus3: false,
                          focus4: false,
                          focus5: false,
                          focus6: false,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue1
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller3.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: false,
                            focus3: false,
                            focus4: true,
                            focus5: false,
                            focus6: false,
                          );
                          node.nextFocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller3,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: false,
                          focus2: false,
                          focus3: true,
                          focus4: false,
                          focus5: false,
                          focus6: false,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue2
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller4.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: false,
                            focus3: false,
                            focus4: false,
                            focus5: true,
                            focus6: false,
                          );
                          node.nextFocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller4,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: false,
                          focus2: false,
                          focus3: false,
                          focus4: true,
                          focus5: false,
                          focus6: false,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue3
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller5.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: false,
                            focus3: false,
                            focus4: false,
                            focus5: false,
                            focus6: true,
                          );
                          node.nextFocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller5,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: false,
                          focus2: false,
                          focus3: false,
                          focus4: false,
                          focus5: true,
                          focus6: false,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue4
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: 39,
                    width: 39,
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        if (controller6.text.length == 1) {
                          data.setOTPfocusValue(
                            focus1: false,
                            focus2: false,
                            focus3: false,
                            focus4: false,
                            focus5: false,
                            focus6: false,
                          );
                          node.unfocus();
                        }
                        data.setCombineOtpValue(
                            cont1: controller1,
                            cont2: controller2,
                            cont3: controller3,
                            cont4: controller4,
                            cont5: controller5,
                            cont6: controller6);
                      },
                      controller: controller6,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onTap: () {
                        data.setOTPfocusValue(
                          focus1: false,
                          focus2: false,
                          focus3: false,
                          focus4: false,
                          focus5: false,
                          focus6: true,
                        );
                      },
                      decoration: InputDecoration(
                          fillColor: data.focusValue5
                              ? Colors.white
                              : Color(0xFFE5E5E5),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          counterText: ''
//                            border: InputBorder.none, counterText: ''
                      ),
                    ),
                  ),
                ],
              ),
              _start != 0
                  ? Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0, top: 15),
                  child: Container(
                      width:55,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text('$_start'+' sec', style: TextStyle(color: Colors.white),))),
                ),
              )
                  : Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {

                    },
                    child: Text('Resend Code')),
              ),

              Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 50,
                      top:20
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                    child: FlatButton(
                      disabledColor: Colors.orange[200],
                      onPressed: controller1.text.isEmpty ||
                          controller2.text.isEmpty ||
                          controller3.text.isEmpty ||
                          controller4.text.isEmpty ||
                          controller5.text.isEmpty ||
                          controller6.text.isEmpty
                          ? null
                          : () {
                                      Navigator.push(
              context,
              PageRouteBuilder(
              pageBuilder:
              (context, animation, secondaryAnimation) {
              return RegisterName();
              },
              transitionsBuilder: (context, animation,
              secondaryAnimation, child) {
              return FadeTransition(
              opacity: animation,
              child: child,
              );
              },
              ),
              );

                      },
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                              MediaQuery.of(context).size.width / 1.1,
                              minHeight: 45.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Next",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                      ),
            ],
          ),
        ),
    );
  }
}
