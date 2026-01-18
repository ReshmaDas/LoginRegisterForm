import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
// Auth Login 
  FocusNode stopFocusNode = FocusNode();
TextEditingController regEmailController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();
TextEditingController loginEmailController = TextEditingController();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController conformPaswswordController = TextEditingController();
TextEditingController restPaswswordPhoneNumController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> registerFirstFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> registerTwoFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> varifyPhnFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> resetPasswordPhnFormKey = GlobalKey<FormState>();
  
  var password = '';
  var phoneNumLog = '';
  String? validateLoginOnePhoneNum(String value) {
    if (value.isEmpty) {
      return 'Enter phone number';
    }
    if (value.length != 10) {
      return 'Enter a valid 10-digit phone number';
    }
    return null; // No error
  }

   var firstName = '';
   var lastName = '';
    var phoneNumReg = '';
 String? validateLoginPassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 charecters";
    }
    return null;
  }

    String? validateEmailLogin(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    if (!GetUtils.isEmail(value.trim())) {
      return 'Enter a valid email';
    }

    return null; // valid
  }


      String? validateEmailReg(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    if (!GetUtils.isEmail(value.trim())) {
      return 'Enter a valid email';
    }

    return null; // valid
  }


  String? validateFirstName(String value){
    if(value.isEmpty){
      return "Enter first name";
    }
    return null;
  }
   String? validateLastName(String value){
    if(value.isEmpty){
      return "Enter last name";
    }
    return null;
  }


var passwordReg = '';
var conformPasswordReg = '';
   String? validateRegPhoneNum(String value) {
    if (value.isEmpty) {
      return 'Enter phone number';
    }
    if (value.length != 10) {
      return 'Enter a valid 10-digit phone number';
    }
    return null; // No error
  }
 String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Confirm Password is required";
    }
    if (value != passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

/// OTP Varify page 
    var varifyMobNum = '';
     String? validateOTPPhoneNum(String value) {
    if (value.isEmpty) {
      return 'Enter phone number';
    }
    if (value.length != 10) {
      return 'Enter a valid 10-digit phone number';
    }
    return null; // No error
  }
// Rest Password
 var restPasswordMobNum = '';
     String? validateRestPasswordPhoneNum(String value) {
    if (value.isEmpty) {
      return 'Enter phone number';
    }
    if (value.length != 10) {
      return 'Enter a valid 10-digit phone number';
    }
    return null; // No error
  }
}