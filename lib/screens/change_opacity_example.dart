import 'package:flutter/material.dart';
import 'package:multi_provider/provider/example_one_provider.dart';
import 'package:multi_provider/screens/widgets/custom_container.dart';
import 'package:provider/provider.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    final changeOpacityProvider = Provider.of<OpacityChangeProvider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Change Opacity Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<OpacityChangeProvider>(
            builder: (context, value, child) {
              return Slider(
                  max: 1,
                  min: 0,
                  value: value.getValue, onChanged: (val){
                print('Slider: ${value.getValue}');
                changeOpacityProvider.setValue(val);
              });
            },
          ),
          Row(children: [
            Consumer<OpacityChangeProvider>(builder: (context, value, child) {
              return CustomContainer(value: value.getValue, boxTitle: 'Box 1' , color: Colors.green);
            },),
            Consumer<OpacityChangeProvider>(builder: (context, value, child) {
              return CustomContainer(value: value.getValue, boxTitle: 'Box 2' , color:  Colors.orange,);
            },),

          ],)
        ],
      ),
    );
  }
}
