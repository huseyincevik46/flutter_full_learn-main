import 'dart:convert';

import '../shared_learn_view.dart';
import '../shared_manager.dart';
import '../user_model.dart';

class UserChacheManager {
  final SharedManager sharedManager;

  UserChacheManager(this.sharedManager);

  Future<void> saveItems(List<User> items) async {
    // compute yapma ilerde
    // json decode etiğinde sana bir obje(string-obje) dönüyor, en code etiğinde string item(stringe çevirme)dönüyor
    final _items =
        items.map((element) => jsonEncode(element.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    // compute yapma ilerde
    final itemsString = sharedManager.getStrings(SharedKeys.users);
    // json decode etiğinde sana bir obje(string-obje) dönüyor, en code etiğinde string item(stringe çevirme)dönüyor

    if (itemsString?.isEmpty ?? false) {
      return itemsString!.map((element) {
        final json = jsonDecode(element);

        if (json is Map<String, dynamic>) {
          return User.fromJson(json);
        }
        return User('', '', '');
      }).toList();
    }
  }
}
