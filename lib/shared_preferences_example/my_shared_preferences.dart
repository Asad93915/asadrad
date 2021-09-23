import 'package:shared_preferences/shared_preferences.dart';

//ya har 1 ma same hii paste hoo jya ga
// shared_preferences: ^2.0.6
class MySharedPreferences {
  MySharedPreferences._privateConstructor();

  static final MySharedPreferences instance =
  MySharedPreferences._privateConstructor();


  //for store value in Shared perference
  setStringValue(String key, String value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }

  setIntegerValue(String key, int value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setInt(key, value);
  }
  setBooleanValue(String key, bool value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setBool(key, value);
  }

 //Retrive/get value from shared perference

  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? "";
    //?? "" if key is null return empty
  }
  Future<int> getIntegerValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getInt(key) ?? 0;
  }


  Future<bool> getBooleanValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getBool(key) ?? false;
  }
  // Check Key is Stored or Not

  Future<bool> containsKey(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.containsKey(key);
  }
// Remove Specific Value
  removeValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.remove(key);
  }
// Remove All Data From Shared Preferences
  removeAll() async{
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.clear();
  }

}



//Store Values in Shared Preferences
// You can store values in shared preferences in the form of string, integer, boolean, double and list of strings.
//
// setStringValue(String key, String value) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// myPrefs.setString(key, value);
// }
//
// setIntegerValue(String key, int value) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// myPrefs.setInt(key, value);
// }
//
// setBooleanValue(String key, bool value) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// myPrefs.setBool(key, value);
// }
//
// setDoubleValue(String key, double value) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// myPrefs.setDouble(key, value);
// }
//
// setStringListValue(String key, List<String> value) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// myPrefs.setStringList(key, value);
// }
//



//Retrieve Values From Shared Preferences
// Future<String> getStringValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.getString(key) ?? “”;
// }
//
// Future<int> getIntegerValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.getInt(key) ?? 0;
// }
//
// Future<bool> getBooleanValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.getBool(key) ?? false;
// }
//
// Future<double> getDoubleValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.getDouble(key) ?? 0;
// }
//
// Future<List<String>> getStringListValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.getStringList(key);
// }
//
//
// Check Key is Stored or Not
// Future<bool> containsKey(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.containsKey(key);
// }
//
//
// Remove Specific Value
// removeValue(String key) async {
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.remove(key);
// }
//
//
// Remove All Data From Shared Preferences
// removeAll() async{
// SharedPreferences myPrefs = await SharedPreferences.getInstance();
// return myPrefs.clear();
// }


