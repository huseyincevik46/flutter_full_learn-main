import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  String _message = '';
  late final bool _isodd;

  @override
  void didChangeDependencies() {
    // sayfanın içerisinde kocaman bir değişiklik edildiğinde çagırılıyor.yeni data update vb
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // üst sınıftan gelen durumu alır
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    // sayfadan çıktıgı yerdir.
    //mesajı temizledim,öldürdüm.
    // TODO: implement dispose
    super.dispose();
    _message = '';
  }

  // mesaj tek ise yanına tek yoksa çift yaz
  void initState() {
    // klasların içindeki constracter methotlar gibi.stateful çizilimeye başlamadan önce başlayıp,çizilmeden önce biter.initstate bir defa yazılır.
    super
        .initState(); // init içinde logic yazdıgınız halde view güncelenmez çünkü build edilmemiştir.
    _message = widget.message;
    _isodd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    // bu ifade initState içinde olmayacagı için etract method yaptık
    if (_isodd) {
      _message += "Çift";
    } else {
      _message += "tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: widget.message.length.isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
