import 'package:flutter/material.dart';
import 'package:multi_provider/provider/login_api_provider.dart';
import 'package:multi_provider/screens/widgets/custom_button.dart';
import 'package:multi_provider/screens/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class LoginApi extends StatefulWidget {
  const LoginApi({Key? key}) : super(key: key);

  @override
  State<LoginApi> createState() => _LoginApiState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

class _LoginApiState extends State<LoginApi> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginAPIProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Login API')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(hint: 'Enter Email', controller: _emailController),
            CustomTextField(hint: 'Enter password', controller: _passController),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            InkWell(
              onTap: (){
                loginProvider.login(_emailController.text.toString(), _passController.text.toString());
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
                child: loginProvider.getLoadingValue? const CircularProgressIndicator(color: Colors.orange,): const Text('Login' , style: TextStyle(
                  fontSize: 16 , color: Colors.white
                ),),
              ),
            )
        ],),
      ),
    );
  }
}
