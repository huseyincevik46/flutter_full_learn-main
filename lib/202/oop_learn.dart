// filedonloada her zaman ui nı felan projenin dışında kodlayacaksın
// FileDownload yapacak kişiler sadece FileItemdan türücek
import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

// bu class test etmeye açık değil çünkü parametreler dışarıdan ve ben değiştiremiyorum.
// bunu yapmak için hepsinin önüne soyut sınıf yazıyoruz (abstract)
abstract class IFileDownload {
// amaç iş yapıcak katmanın iskeletleriini oluşturmak.
  bool? downloadItem(FileItem? fileItem); // ana katman burası

  void toShare(String path) async {
    await launch(path);
  }
}

class FileDownload implements IFileDownload {
  // extends de edebilirdik kendi özeliğimizide katabiliriz
  @override
  bool? downloadItem(FileItem? fileItem) {
    // bool? koyma sebebi bir sorun oluşabilir diye
    if (fileItem == null)
      throw Exception(); // exception fırlatmak i.in throw gerek
    print('a');
    return true;
  }

  @override
  void toShare(String path) {
    // polimorfizimden dolayı sende yapıcaksın buraya dedi
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  //abstract class gibi çalışır
//başına on koyup sadece beli durumlardan türemesini sağlayabiliyoruz
// mixin sınırlandırmada getiriyor.
  void toShowFile() {}
}
