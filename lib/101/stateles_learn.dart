import 'package:flutter/material.dart';
// kompleks artıgında widget oluşturarak parçalamalıyım
// dışarda parametre alabilir halde olmalıyım 
// sayfalarımda pravite olrak entegre etmeliyim 
class StatelesWidgetLearn extends StatelessWidget {
  const StatelesWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    // build metodu widgetlarımızın oluşturlması için ana yeri verir
    const  String  text2 = 'veli';
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children:  [
          TitleTextWidget(text: '',),
         // TitleTextWidget(text:  text2),// burda yazan stringi local veriable yapmayı unutma
          TitleTextWidget(text: 'ahmet',),   // yukarıdaki ifade local veriable olmuş hali 
          TitleTextWidget(text: '',),
          
        ],
      ),
    );
  }
}
// sayfaya özgü yapıyosan başına _ koyulur private olduğu anlama gelir.
class TitleTextWidget extends StatelessWidget { // statelestan text widgetı türettik 
  const TitleTextWidget({super.key,required this.text});
  final String? text;// burda String data yazamazdık widget değişmez olmalı bu yüzden final koyduk.

  @override
  Widget build(BuildContext context) {
    return  Text(
      "text",
      style: Theme.of(context).textTheme.headline3,
    );
  }
}