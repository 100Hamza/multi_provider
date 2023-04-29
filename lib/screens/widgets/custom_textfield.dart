import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hint;
  TextEditingController? controller;

  CustomTextField({super.key, required this.hint , required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
