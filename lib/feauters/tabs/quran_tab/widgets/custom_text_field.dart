import 'package:flutter/material.dart';
import 'package:nti_islami/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      style: TextStyle(color: AppColors.primaryColor),
      decoration: InputDecoration(
          hintText: 'Sura name',
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          prefixIcon: Image.asset('assets/images/icons/ic_book.png',
              color: AppColors.primaryColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primaryColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primaryColor))),
    );
  }
}
