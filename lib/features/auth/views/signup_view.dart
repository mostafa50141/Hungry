import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/login_view.dart';
import 'package:hungry/features/auth/widgets/custom_auth_btn.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_Txt_Field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    // ignore: unused_local_variable
    TextEditingController confirmController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Gap(200),

              SvgPicture.asset(
                'assets/Hungry_.svg',
                color: AppColors.primaryColor,
              ),

              Gap(10),

              Center(
                child: customText(
                  text: 'welcome Back, Discover the Fast Food',
                  size: 13,
                  color: AppColors.primaryColor,
                  weight: FontWeight.w500,
                ),
              ),

              Gap(100),

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

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(30),

                        customTxtField(
                          hint: 'Name',
                          isPassword: false,
                          controller: nameController,
                        ),

                        Gap(20),

                        customTxtField(
                          hint: 'Email Address',
                          isPassword: false,
                          controller: emailController,
                        ),

                        Gap(20),

                        customTxtField(
                          hint: 'Password',
                          isPassword: true,
                          controller: passController,
                        ),

                        Gap(25),

                        customAuthBtn(
                          text: 'Sig Up',
                          color: AppColors.primaryColor,
                          textColor: Colors.white,
                          borderColor: Colors.white,
                        ),

                        Gap(10),

                        customAuthBtn(
                          color: Colors.white,
                          textColor: AppColors.primaryColor,
                          text: 'Go to Login ?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (v) => LoginView()),
                            );
                          },
                        ),

                        Gap(20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
