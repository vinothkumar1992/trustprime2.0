import 'package:flutter/material.dart';
// import 'package:ebazar_portal/theme/styles.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration inputDecoration({
  required Size size,
  String? labelText,
  String? hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    errorMaxLines: 1,
    errorStyle: TextStyle(
      // fontSize: size.height * 0.030,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    hintStyle: TextStyle(
        // fontSize: size.height * 0.023,
        fontWeight: FontWeight.w500,
        color: Colors.grey[400]),
    labelText: labelText,
    labelStyle: GoogleFonts.poppins(
        color: Colors.lightBlue[400],
        // fontSize: size.height * 0.032,
        fontWeight: FontWeight.normal),
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    hintText: hintText,
    focusColor: Colors.lightBlue[400],
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 23),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF123456)),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF123456)),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF123456)),
      gapPadding: 10,
    ),
  );
}
