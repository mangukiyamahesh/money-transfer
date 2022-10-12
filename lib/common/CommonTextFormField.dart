import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextFormField extends StatelessWidget {
  final text;
  final obscure;
  final maxLength;
  final keyBoardTYpe;
  final prefixicon;
  final sufixicon;
  final String? Function(String?)? validator;
  final controller;
  final formkey;
  final labelText;
  final borderRadius;
  final borderSide;
  final onChanged;
  final maxLengthEnforcement;
  final EdgeInsetsGeometry? contentPadding;

  CommonTextFormField({
    super.key,
    this.text,
    required this.obscure,
    this.maxLength,
    this.keyBoardTYpe,
    this.prefixicon,
    this.contentPadding,
    this.validator,
    this.controller,
    this.formkey,
    this.labelText,
    this.borderRadius,
    this.borderSide,
    this.sufixicon,
    this.onChanged,
    this.maxLengthEnforcement,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return TextFormField(
      maxLengthEnforcement: maxLengthEnforcement,
      onChanged: onChanged,
      key: formkey,
      controller: controller,
      validator: validator,
      obscureText: obscure,
      maxLength: maxLength,
      keyboardType: keyBoardTYpe,
      textInputAction: TextInputAction.next,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: sufixicon,
        prefixIcon: prefixicon,
        counterText: "",
        contentPadding: contentPadding,
        filled: true,
        hintText: text,
        labelText: labelText,
        hintStyle: TextStyle(color: Color(0xffB6B7B7)),
        fillColor: Color(0xffF2F2F2),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: borderSide,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius, borderSide: borderSide),
        errorBorder: OutlineInputBorder(
            borderRadius: borderRadius, borderSide: borderSide),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: borderRadius, borderSide: borderSide),
      ),
    );
  }
}
