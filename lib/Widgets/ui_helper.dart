import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextFiled({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
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
      ),
    );
  }

  static CustomImage({required String imageUrl}) {
    return Image.asset("assets/images/$imageUrl");
  }

  static CustomTextButton({
    required String text,
    required VoidCallback callFunction,
  }) {
    return TextButton(
      onPressed: () {
        callFunction();
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Color(0XFF3797EF)),
      ),
    );
  }

  static CustomButton({
    required String buttonName,
    required VoidCallback callBackFunction,
  }) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          callBackFunction();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
