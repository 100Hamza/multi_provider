import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final counterProvider = Provider.of<CounterProvider>(context , listen: false);

    Timer.periodic(Duration(seconds: 1), (timer) {
      return counterProvider.setTime();
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build');
    final counterProvider = Provider.of<CounterProvider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
      ),
      body: Consumer<CounterProvider>(builder: (context, value, child) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(value.getTime ,style: TextStyle(fontSize: 30),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
              Text(value.getCount.toString() ,style: TextStyle(fontSize: 30),),

            ],
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterProvider.setCounter();
        print('Counter: ${counterProvider.getCount}');
      }, child:  Icon(Icons.add)),
    );
  }
}
