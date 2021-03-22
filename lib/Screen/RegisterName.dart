import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:provider/provider.dart';
import 'package:olilifood/Screen/SelectLocation.dart';

import 'OTP.dart';

class RegisterName extends StatefulWidget {
  @override
  RegisterNameState createState() => RegisterNameState();
}

class RegisterNameState extends State<RegisterName> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG', dialCode: '+234');



  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.keyboard_backspace),
            color: Color(0xFF272b3f),
            onPressed: () {

            },)
      ),
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
                    data.setFirstName(value);
                  },
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black38),
                    labelText: 'Enter Your Full Name',
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20),
                width: MediaQuery.of(context).size.width / 0.2,
                height: 55,
                child: TextFormField(
                  onChanged: (value) {
                    data.setEmail(value);
                  },
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black38),
                    labelText: 'Enter Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
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
                      onPressed:
                      data.firstName.toString().isEmpty || data.emails.isEmpty
                          ? null
                          : () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return SelectLocate(); //SignUpAddress();
                            },
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
                              maxWidth:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width,
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
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
