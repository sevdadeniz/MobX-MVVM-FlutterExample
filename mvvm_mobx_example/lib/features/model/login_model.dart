import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginModel with ChangeNotifier {

   String? emailData; 
  static late SharedPreferences _sharedPrefObject;



  

  Future<void> createEmailPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void saveEmailSharedPref(String value) {
      _sharedPrefObject.setString("email", value);
  }

  void  loadEmailFromSharedPref() async {
    await createEmailPrefObject();
     emailData = _sharedPrefObject.getString("email")!;
  }

  
  

  deleteMailData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove("email");
  }

  

}
