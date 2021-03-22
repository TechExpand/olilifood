



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:olilifood/Screen/Register.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () async {
      return decideFirstWidget();
    });
  }

  Future<Widget> decideFirstWidget() async {
    return Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return Register(); //SignUpAddress();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
          (route) => false,
    );
  }

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG', dialCode: '+234');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height/1.32,
                child: Image.asset('assets/images/mobile.jpg', fit: BoxFit.cover,)),
            Container(
              margin: EdgeInsets.only(left: 15, right:15, top:20),
              child: Text(
                  'Welcome to Neao Food',
                  style: GoogleFonts.openSans(
                      fontSize:
                      18,
                      color:
                      Color(0xFF272b3f),
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right:15, top:1),
              child: Text(
                  'Enter your phone number to login or register',
                  style: GoogleFonts.openSans(
                      fontSize:
                      14,
                      color:
                      Color(0xFF272b3f),
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right:15, top:10),
              width: MediaQuery.of(context).size.width / 0.2,
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
                  isEnabled: false,
                  textStyle: TextStyle(fontSize: 17, color: Color(0xFF8c9197)),
                  inputBorder: InputBorder.none,
                  onInputChanged: (PhoneNumber num) {
                 //   data.setNumber(num);
                  },
                  onInputValidated: (bool value) {},
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DIALOG,
                  ),
                  ignoreBlank: false,
                  hintText: '7023261537',
                  initialValue: number,

//              autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Color(0xFF8c9197)),
                  textFieldController: controller,
                ),
              ),
            ),

          ],
        ),
      );
  }
}
