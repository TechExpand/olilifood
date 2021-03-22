import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/HomePage.dart';
import 'package:provider/provider.dart';


import 'OTP.dart';

class SelectLocate extends StatefulWidget {
  @override
  SelectLocateState createState() => SelectLocateState();
}

class SelectLocateState extends State<SelectLocate> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG', dialCode: '+234');
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;

  func(index) {
    if (index == 0) {
      setState(() {
        this.value1 = true;
        this.value2 = false;
        this.value3 = false;
        this.value4 = false;
        this.value5 = false;
        this.value6 = false;
        this.value7 = false;
      });
    } else if (index == 1) {
      setState(() {
        this.value1 = false;
        this.value2 = true;
        this.value3 = false;
        this.value4 = false;
        this.value5 = false;
        this.value6 = false;
        this.value7 = false;
      });
    } else if (index == 2) {
      setState(() {
        this.value1 = false;
        this.value2 = false;
        this.value3 = true;
        this.value4 = false;
        this.value5 = false;
        this.value6 = false;
        this.value7 = false;
      });
    } else if (index == 3) {
      setState(() {
        this.value1 = false;
        this.value2 = false;
        this.value3 = false;
        this.value4 = true;
        this.value5 = false;
        this.value6 = false;
        this.value7 = false;
      });
    } else if (index == 4) {
      setState(() {
        this.value1 = false;
        this.value2 = false;
        this.value3 = false;
        this.value4 = false;
        this.value5 = true;
        this.value6 = false;
        this.value7 = false;
      });
    } else if (index == 5) {
      setState(() {
        this.value1 = false;
        this.value2 = false;
        this.value3 = false;
        this.value4 = false;
        this.value5 = false;
        this.value6 = true;
        this.value7 = false;
      });
    } else if (index == 6) {
      setState(() {
        this.value1 = false;
        this.value2 = false;
        this.value3 = false;
        this.value4 = false;
        this.value5 = false;
        this.value6 = false;
        this.value7 = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace),
            color: Color(0xFF272b3f),
            onPressed: () {},
          )),
      key: scaffoldKey,
      body: Material(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 14),
                child: Text(
                  'Complete Registration',
                  style: TextStyle(
                    color: Color(0xFF272b3f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 0.2,
                height: 55,
                child: TextFormField(
                  onChanged: (value) {
                    data.setBVN(value);
                  },
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black38),
                    labelText: 'Enter City Name',
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Asaba',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(0);
                        },
                        labelStyle: TextStyle(color: Colors.white),
                        selected: value1,
                        selectedColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Warri',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(1);
                        },
                        selected: value2,
                        selectedColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Enugu',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(2);
                        },
                        selected: value3,
                        selectedColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Port-Harcourt',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(3);
                        },
                        selected: value4,
                        selectedColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Owerri',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(4);
                        },
                        selected: value5,
                        selectedColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Benin City',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(5);
                        },
                        selected: value6,
                        selectedColor: Colors.orange,
//                        disabledColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(
                          'Abuja',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (v) {
                          func(6);
                        },
                        selected: value7,
                        selectedColor: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 50,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(8)),
                    child: FlatButton(
                      onPressed: data.number.toString() == data.number.dialCode
                          ? null
                          : () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return HomePage(); //SignUpAddress();
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
                      disabledColor: Colors.orange[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width,
                              minHeight: 45.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
