import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_not_initalze.dart';

enum SharedKeys { counter, users }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager() {
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw SharedNotInitiazleException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    await preferences?.setInt(key.name, value as int);
  }

  Future<void> saveStringItems(SharedKeys key, List<String> value) async {
    // listeye kayıt işlemi
    _checkPreferences();
    await preferences?.setStringList(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name);
  }

  List<String>? getStrings(SharedKeys key) {
    // listenin get işlemi
    _checkPreferences();
    return preferences?.getStringList(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPreferences();
    return (await preferences?.remove(key.name)) ?? false;
  }
}
