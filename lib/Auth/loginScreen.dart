import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginform/Auth/controller.dart';
import 'package:loginform/Auth/register1screen.dart';
import 'package:loginform/color.dart';
import 'package:loginform/ui/pages/page1.dart';
import 'package:loginform/widget/TextfieldCustom.dart';
import 'package:loginform/widget/mainButton.dart';
import 'package:loginform/widget/textOne.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final loginController = Get.put(AuthController());
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
      //     preferredSize: Size.fromHeight(40), child: CustomAppBar()),
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark ? black : white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: usableHeight),
          child: IntrinsicHeight(
            child: Form(
              key: loginController.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 20),
                    child: TitleMainText(
                      title: 'Log In',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: loginController.loginEmailController,
                      keyboard: TextInputType.emailAddress,
                      labalText: 'Email',
                      validator: (value) {
                        return loginController.validateEmailLogin(value);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: CustomTextField(
                      controller: loginController.loginPasswordController,
                      validator: (value) {
                        return loginController.validateLoginPassword(value);
                      },
                      onSaved: (String? value) {
                        loginController.password = value!;
                      },
                      keyboard: TextInputType.text,
                      labalText: 'Password',
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: MainButton(
                        function: (p0) async {
                          final isValid = loginController
                              .loginFormKey.currentState
                              ?.validate();
                          if (isValid == false) {
                            print('login Faild');
                          } else {
                            final box = GetStorage();
                            box.write(
                                'user_name',
                                loginController.loginEmailController.text
                                    .trim());
                            box.write(
                                'email',
                                loginController.loginPasswordController.text
                                    .trim());
                            box.write('isLoggedIn', true);

                            loginController.loginEmailController.clear();
                            loginController.loginPasswordController.clear();

                            Get.to(const PageOne());
                            print('suucecce login');
                          }
                          //  Get.toNamed('/resetPassword');
                          //  Get.to(MainScreen());
                        },
                        width: screenWidth,
                        title: 'Log In',
                        color: lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Spacer(),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
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
                        InkWell(
                          onTap: () {
                            // final isValid = loginController.loginFormKey.currentState?.validate();
                            // if(isValid == false)
                            // {
                            //   print('login Faild');
                            // }else{
                            //    Get.toNamed('/resetPassword');
                            // }
                            Get.to(Registerationscreen());
                          },
                          child: Text(
                            ' Sign up',
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
                  const Spacer(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: screenHeight * .28,
                          width: screenHeight * .3,
                          child: Image.asset('assets/images/image4.png'))),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
