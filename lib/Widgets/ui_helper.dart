import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextFiled({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 44,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Color(0XFFFFFFFF)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: Color(0XFFFFFFFF),
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imageUrl}) {
    return Image.asset("assets/images/$imageUrl");
  }
}
