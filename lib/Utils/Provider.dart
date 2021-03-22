import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class DataProvider extends ChangeNotifier {
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  String password = '';
  int count = 10;
  String firebaseUserId = '';
  String overview = '';
  bool focusValue = false;
  String description = '';
  bool focusValue1 = false;
  bool splash = false;
  String productName = '';
  String productBio = '';
  String productPrice = '';
  List subcat = [];
  bool focusValue2 = false;
  bool focusValue3 = false;
  bool focusValue4 = false;
  bool focusValue5 = false;
  bool isWriting = false;
  int selectedPage = 0;
  String emails = '';
  String homeAddress = '';
  String bvn = '';
  String officeAddress = '';
  String otp = '';
  String firstName = '';
  String lastName = '';
  String artisanVendorChoice = '';
  bool passwordObscure = true;
  bool showCallToAction = true;

  set setCallToActionStatus(bool newVal) {
    showCallToAction = newVal;
    notifyListeners();
  }

  setDescription(value) {
    description = value;
    notifyListeners();
  }

  //change password obcure text
  setSelectedBottomNavBar(value) {
    selectedPage = value;
    notifyListeners();
  }

  //change password obcure text
  setPassWordObscure(value) {
    passwordObscure = value;
    notifyListeners();
  }

// combine all otp textfield as one
  setCombineOtpValue({cont1, cont2, cont3, cont4, cont5, cont6}) {
    otp =
        "${cont1.text}${cont2.text}${cont3.text}${cont4.text}${cont5.text}${cont6.text}";
    notifyListeners();
  }

  // check if  textfield firstNAme is empty or not
  setFirstName(value) {
    firstName = value;
    notifyListeners();
  }

  setSubCat(value) {
    subcat.add(value);
    notifyListeners();
  }

  setdelSubCat(value) {
    subcat.remove(value);
    notifyListeners();
  }

  setclrSubCat() {
    subcat.clear();
    notifyListeners();
  }

  setOverView(value) {
    overview = value;
    notifyListeners();
  }

  setArtisanVendorChoice(value) {
    artisanVendorChoice = value;
    notifyListeners();
  }

  // check if   BVN is empty or not
  setBVN(value) {
    bvn = value;
    notifyListeners();
  }

  // check if  textfield lastName is empty or not
  setLastName(value) {
    lastName = value;
    notifyListeners();
  }

  // check if  textfield homeAdress is empty or not
  sethomeAdress(value) {
    homeAddress = value;
    notifyListeners();
  }

  setProductName(value) {
    productName = value;
    notifyListeners();
  }

  setProductBio(value) {
    productBio = value;
    notifyListeners();
  }

  setProductPrice(value) {
    productPrice = value;
    notifyListeners();
  }

// check if  textfield officeAdress is empty or not
  setofficeAddress(value) {
    officeAddress = value;
    notifyListeners();
  }

  // check if  textfield email is empty or not
  setEmail(value) {
    emails = value;
    notifyListeners();
  }

  // check if  textfield password is empty or not
  setPassword(value) {
    password = value;
    notifyListeners();
  }

// check if  textfield number is empty or not
  setNumber(value) {
    number = value;
    notifyListeners();
  }

//change textfield number on focus of otp textfield
  setOTPfocusValue({focus1, focus2, focus3, focus4, focus5, focus6}) {
    focusValue = focus1;
    focusValue1 = focus2;
    focusValue2 = focus3;
    focusValue3 = focus4;
    focusValue4 = focus5;
    focusValue5 = focus6;
    notifyListeners();
  }

//end of **of otp textfield** function

//otp count down

  void setUserID(id) {
    firebaseUserId = id;
    notifyListeners();
  }


  setWritingTo(bool val) {
    isWriting = val;
    notifyListeners();
  }

  setSplash(bool val) {
    splash = val;
    notifyListeners();
  }


}
