import 'package:flutter/material.dart';
import 'package:multi_provider/provider/counter_provider.dart';
import 'package:multi_provider/provider/example_one_provider.dart';
import 'package:multi_provider/provider/favoourite_items_provider.dart';
import 'package:multi_provider/provider/login_api_provider.dart';
import 'package:multi_provider/screens/switch_to_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ChangeNotifierProvider(create: (context) => OpacityChangeProvider(),),
      ChangeNotifierProvider(create: (context) => FavouriteItemsProvider(),),
      ChangeNotifierProvider(create: (context) => LoginAPIProvider(),),
    ], child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwitchScreen(),
    ),);
  }
}
