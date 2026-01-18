import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loginform/Auth/controller.dart';
import 'package:loginform/Auth/registerScreen.dart';
import 'package:loginform/color.dart';
import 'package:loginform/widget/TextfieldCustom.dart';
import 'package:loginform/widget/mainButton.dart';
import 'package:loginform/widget/textOne.dart';

class Registerationscreen extends StatelessWidget {
  Registerationscreen({super.key});
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
      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(40),
      //     child: CustomAppBar()),
      backgroundColor: Colors.white,
      //  Theme.of(context).brightness == Brightness.dark ? black : white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: usableHeight,
          ),
          child: IntrinsicHeight(
            child: Form(
              key: controller.registerFirstFormKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 30, bottom: 20),
                      child: TitleMainText(
                        title: 'Let’s Get To Know About You',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: controller.firstNameController,
                      validator: (value) {
                        return controller.validateFirstName(value);
                      },
                      onSaved: (String? value) {
                        controller.firstName = value!;
                      },
                      keyboard: TextInputType.name,
                      labalText: 'First Name',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: controller.lastNameController,
                      validator: (value) {
                        return controller.validateLastName(value);
                      },
                      onSaved: (String? value) {
                        controller.lastName = value!;
                      },
                      keyboard: TextInputType.name,
                      labalText: 'Last Name',
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: controller.regEmailController,
                      keyboard: TextInputType.emailAddress,
                      labalText: 'Email',
                      validator: (value) {
                        return controller.validateEmailReg(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: MainButton(
                      function: (p0) {
                        final isValid = controller
                            .registerFirstFormKey.currentState
                            ?.validate();
                        if (isValid == false) {
                          print('sign up page faild');
                        } else {
                          Get.to(RegScreenTwo());
                        }

                        // Get.to(RestPassword());
                      },
                      width: screenWidth,
                      title: 'Next',
                      color: lightBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Replace Spacer with Flexible to avoid overflow
                  Flexible(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: screenHeight * .3,
                        width: screenHeight * .28,
                        child: Image.asset('assets/images/image6.png'),
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
