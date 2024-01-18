// ne gelicegini bilemediğiniz durumlarda
// bana bir şey gönder ama velinin arkadaşı olsun.
class UserManagment {
  void sayName(User user) {
    print(user.name);
  }

  void calculateMoney(List<User> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    final sumMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => previousValue + element);
  }
}

class User {
  final String name;
  final String id;
  final int money;

  User(this.name, this.id, this.money);
}
