// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

saveAllUserInfo(String userInfo) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString('user_info', userInfo);
}

saveUserSessionKey(sessionKey) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString('session_key', sessionKey);
}

getUserSessionKey() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getString("session_key");
}

getEveryGlobalInfo(String key) async {
  if (kDebugMode) {
    print("This is key : $key");
  }
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  if (sharedPreferences.getString(key) == null ||
      sharedPreferences.getString(key) == "") {
    return null;
  } else {
    // return json.decode(sharedPreferences.getString(key));
  }
}

// showInfoDialog(context, msg) {
//   AwesomeDialog(
//           dismissOnTouchOutside: false,
//           context: context,
//           animType: AnimType.SCALE,
//           dialogType: DialogType.NO_HEADER,
//           body: Center(
//             child: Text(
//               msg,
//               style: const TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           btnOkOnPress: () async {},
//           btnOkColor: Colors.blue)
//       .show();
// }

showToastSuccess(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

showToastInfo(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.lightBlue,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

showToastError(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

bool isPasswordCompliant(String password, [int minLength = 6]) {
  if (password.isEmpty) {
    return false;
  }

  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool hasMinLength = password.length > minLength;

  return hasDigits &
      hasUppercase &
      hasLowercase &
      hasSpecialCharacters &
      hasMinLength;
}
