import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginform/Auth/loginScreen.dart';
import 'package:loginform/color.dart';
import 'package:loginform/widget/TextfieldCustom.dart';
import 'package:loginform/widget/mainButton.dart';
import 'package:loginform/widget/textOne.dart';

import 'controller.dart';

class RegScreenTwo extends StatelessWidget {
  RegScreenTwo({super.key});
  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final screenWidth = size.width;
    final screenHeight = size.height;
    final appBarHeight = AppBar().preferredSize.height;
    double safePadding = MediaQuery.of(context).padding.top;
    double usableHeight = screenHeight - safePadding - appBarHeight;
    return Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(40),
      //   child: CustomAppBar(
      //   //  backFun: () => Navigator.of(context).pop(),
      //   ),
      // ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: usableHeight),
          child: IntrinsicHeight(
            child: Form(
              key: controller.registerTwoFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize:
                    MainAxisSize.min, // Ensures the column doesn't overflow
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 10),
                    child: Container(
                      child: TitleMainText(
                        title: 'Sign Up',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      onSaved: (String? value) {
                        controller.phoneNumReg = value!;
                      },
                      validator: (value) {
                        return controller.validateRegPhoneNum(value);
                      },
                      keyboard: TextInputType.number,
                      labalText: 'Phone Number',
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: controller.passwordController,
                      onSaved: (String? value) {
                        controller.passwordReg = value!;
                      },
                      validator: (value) {
                        return controller.validatePassword(value);
                      },
                      keyboard: TextInputType.text,
                      labalText: 'Password',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: controller.conformPaswswordController,
                      onSaved: (String? value) {
                        controller.conformPasswordReg = value!;
                      },
                      validator: (value) {
                        return controller.validateConfirmPassword(value);
                      },
                      keyboard: TextInputType.text,
                      labalText: 'Confirm Password',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Spacer(),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: MainButton(
                      function: (p0) {
                        final isValid = controller
                            .registerTwoFormKey.currentState
                            ?.validate();
                        if (isValid == false) {
                          print('login Faild');
                        } else {
                          controller.firstNameController.clear();
                          controller.lastNameController.clear();
                          controller.regEmailController.clear();
                          controller.conformPaswswordController.clear();
                          controller.passwordController.clear();
                          controller.restPaswswordPhoneNumController.clear();
                          Get.offAll(LoginScreen());
                        }
                        //  Get.toNamed('/varifyOtp');
                        // Get.to(RestPassword());
                      },
                      width: screenWidth,
                      title: 'Sign Up',
                      color: lightBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'You can use this password when you login next time',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black, // Hint text color
                                  fontStyle: FontStyle
                                      .normal, // Change to italic or any other style
                                  fontSize: 20.0, // Hint text size
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Replace Spacer with Flexible to avoid overflow
                  Flexible(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: screenHeight * .25,
                        width: screenHeight * .29,
                        child: Image.asset('assets/images/image7.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
