import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

// ignore: camel_case_types
class customTxtField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController controller;

  const customTxtField({
    super.key,
    required this.hint,
    required this.isPassword,
    required this.controller,
  });

  @override
  State<customTxtField> createState() => _customTxtFieldState();
}

// ignore: camel_case_types
class _customTxtFieldState extends State<customTxtField> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isPassword;
    super.initState();
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,

      cursorColor: AppColors.primaryColor,

      validator: (v) {
        if (v == null || v.isEmpty) {
          return 'Please fill ${widget.hint}';
        }
        return null;
      },

      obscureText: _obscureText,

      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  _togglePassword();
                },
                child: Icon(CupertinoIcons.eye, color: AppColors.primaryColor),
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),

        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.primaryColor),

        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
