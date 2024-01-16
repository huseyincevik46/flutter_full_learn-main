class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  // verriable lar sadece contracter zamanında gelebilir ve initilazer olamaz.
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;
  PostModel4(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel5 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6(
      {int userId = 0, int id = 0, String title = '', String body = ''}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel7({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null /*&& isNotEmpty*/) {
      data.length;
    }
  }
}
