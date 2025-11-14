import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/signup_view.dart';
import 'package:hungry/features/auth/widgets/custom_auth_btn.dart';
import 'package:hungry/root.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_Txt_Field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(150),

                SvgPicture.asset(
                  'assets/Hungry_.svg',
                  color: AppColors.primaryColor,
                ),

                Gap(10),

                customText(
                  text: 'welcome Back, Discover the Fast Food',
                  size: 13,
                  color: AppColors.primaryColor,
                  weight: FontWeight.w500,
                ),

                Gap(70),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Gap(30),
                        customTxtField(
                          hint: 'Email Address',
                          isPassword: false,
                          controller: emailController,
                        ),

                        Gap(15),

                        customTxtField(
                          hint: 'Password',
                          isPassword: true,
                          controller: passController,
                        ),

                        Gap(35),

                        customAuthBtn(
                          text: 'Login',
                          color: AppColors.primaryColor,
                          textColor: Colors.white,
                          borderColor: Colors.white,
                        ),

                        Gap(15),

                        customAuthBtn(
                          color: Colors.white,
                          textColor: AppColors.primaryColor,
                          text: 'Create Account ?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (v) => SignupView()),
                            );
                          },
                        ),

                        //guest
                        Gap(20),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) {
                                  return Root();
                                },
                              ),
                            );
                          },
                          child: customText(
                            text: 'Continue as a guest ?',
                            color: Colors.grey,
                            weight: FontWeight.bold,
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
