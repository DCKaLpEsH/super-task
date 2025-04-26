import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
  });

  final String? labelText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: prefixIcon,
        ),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: -8,
        ),
        alignLabelWithHint: true,
      ),
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
    );
  }
}
