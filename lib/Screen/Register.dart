import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:provider/provider.dart';

import 'OTP.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
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
                  'Enter your phone number',
                  style: TextStyle(
                    color: Color(0xFF272b3f),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 0.2,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFf6f7f9),
                    border: Border.all(
                      color: Color(0xFFe0dfe4),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: InternationalPhoneNumberInput(
                    initialValue: number,
                    hintText: '7023261537',
                    textStyle: TextStyle(
                        fontSize: 17, color: Color(0xFF8c9197)),
                    inputBorder: InputBorder.none,
                    onInputChanged: (PhoneNumber num) {
                      data.setNumber(num);
                    },

                    onInputValidated: (bool value) {},
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
//                backgroundColor: Colors.black,
                    ),
                    ignoreBlank: false,
//              autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Color(0xFF8c9197)),
                    textFieldController: controller,
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
                      data.number.toString() == data.number.dialCode
                          ? null
                          : () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return pass(); //SignUpAddress();
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
