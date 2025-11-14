import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_btn_profile.dart';
import 'package:hungry/features/auth/widgets/custom_user_txt_field.dart';
import 'package:hungry/shared/custom_Text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  void initState() {
    _name.text = 'Mostafa Abdelaziz';
    _email.text = 'abdelazizmostafa160@gmail.com';
    _address.text = 'Faiyum, Egypt';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.white, size: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.white, size: 25),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    image: DecorationImage(
                      image: AssetImage('assets/myPhoto.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              Gap(30),

              CustomUserTxtField(controller: _name, label: 'Name'),

              Gap(25),

              CustomUserTxtField(controller: _email, label: 'Email'),

              Gap(25),

              CustomUserTxtField(controller: _address, label: 'Address'),

              Gap(25),

              Divider(),

              Gap(25),

              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                title: customText(
                  text: 'Debit card',
                  weight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: customText(
                  text: '**** **** 2342',
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                leading: Image.asset('assets/visa.png'),
                tileColor: Colors.white,
                trailing: customText(text: 'Default', color: Colors.black),
              ),
              Gap(200),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade800, blurRadius: 20)],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBtnProfile(
              onTap: () {},
              color: Colors.white,
              borderColor: AppColors.primaryColor,
              iconColor: AppColors.primaryColor,
              text: 'Edit Profile',
              textColor: AppColors.primaryColor,
              icon: Icons.edit_document,
            ),

            Gap(15),

            CustomBtnProfile(
              onTap: () {},
              color: AppColors.primaryColor,
              borderColor: AppColors.primaryColor,
              iconColor: Colors.white,
              text: 'Log out',
              textColor: Colors.white,
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
