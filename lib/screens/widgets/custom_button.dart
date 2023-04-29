import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback? onPress;
  String? title;

  CustomButton({super.key, required this.title , required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(title.toString() , style: TextStyle(color: Colors.white , fontSize: 18),)),
      ),
    );
  }
}
