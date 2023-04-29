import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  double value;
  String boxTitle;
  Color color;
  CustomContainer({super.key, required this.value , required this.boxTitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(color: color.withOpacity(value)),
          child: Text(boxTitle.toString()),
        ),
      ),
    );
  }
}
