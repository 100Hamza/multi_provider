import 'package:flutter/material.dart';
import 'package:multi_provider/helper/helper_navigation.dart';
import 'package:multi_provider/screens/change_opacity_example.dart';
import 'package:multi_provider/screens/favourite_app/favourite_screen.dart';
import 'package:multi_provider/screens/login_api.dart';
import 'package:multi_provider/screens/widgets/custom_button.dart';

import 'counter_example.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Screen')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CustomButton(onPress: () {
        HelperNavigation.pushRoute(context, const CounterExample());
        }, title: 'Counter Example',),
        CustomButton(onPress: () {
          HelperNavigation.pushRoute(context, const OpacityExample());
        }, title: 'Change Opacity Example',),
        CustomButton(onPress: () {
          HelperNavigation.pushRoute(context, const FavouriteScreen());
        }, title: 'Favourite App Screen',),
        CustomButton(onPress: () {
          HelperNavigation.pushRoute(context, const LoginApi());
        }, title: 'Login API',),
          ],
        ),
      ),
    ),);
  }
}
