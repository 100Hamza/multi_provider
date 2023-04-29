import 'package:flutter/foundation.dart';
import 'package:http/http.dart';


class LoginAPIProvider with ChangeNotifier
{
  bool _loading = false;

  bool get getLoadingValue => _loading;

  void setLoadingValue(bool loading)
  {
    _loading = loading;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoadingValue(true);
    try{
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
        'email': email,
        'password': password
      });
      if(response.statusCode == 200)
        {
          setLoadingValue(false);
          print('Login Successfull');
        }
      else
        {
          setLoadingValue(false);
          print('Login Field');
        }
    }
    catch(e)
    {
      setLoadingValue(false);
      print(e.toString());
    }
  }
}