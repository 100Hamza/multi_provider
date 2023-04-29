import 'package:flutter/material.dart';

class HelperNavigation{
  static pushRoute(BuildContext context , Widget targetClass)
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return targetClass;
    },));
  }
}