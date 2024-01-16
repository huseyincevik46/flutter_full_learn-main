import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hello')),
      body: Column(children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //  outlined daha hoştur o yüzden kullanılır.
              color: Theme.of(context)
                  .colorScheme
                  .error, // burda colorı themedan verdik bu daha da iyisi classtan
              size: 48,
            )),
        IconButton(
            // bunu böyle tekrar mı edeceksin tabikide hayır class oluştur.
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //  outlined daha hoştur o yüzden kullanılır.
              color: iconColors
                  .flory, // flory yazarsak bütün projem florry kalıcak
              size: iconSize.iconSmall, // sınıtan aldık size nı
            )),
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color flory = const Color(0xffED617A);
}
