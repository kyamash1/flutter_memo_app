import 'package:shared_preferences/shared_preferences.dart';

class SharePrefs {
  //文字列の型を作成
  static final listItems = "list_items";
  static final completedItems = "completed_items";
  static SharedPreferences _sharedPreferences;

  static Future setInstance() async {
    if (null != _sharedPreferences) return;
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setListItems(List<String> value) =>
      _sharedPreferences.setStringList(listItems, value);
  static List<String> getListItems() =>
      _sharedPreferences.getStringList(listItems) ?? [];

  static Future<bool> setCompletedItems(List<String> value) =>
      _sharedPreferences.setStringList(completedItems, value);
  static List<String> getCompletedItems() =>
      _sharedPreferences.get(completedItems) ?? [];
}