import 'package:flutter/material.dart';

class TexLearnView extends StatelessWidget {
  TexLearnView({super.key});
  final String name = 'veli';
  final ProjectKeys userName = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ('welcome + name'),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: ProjectStyles.welcomeStyle, //textStyle ı classdan aldık
              ),
              Text(('welcome + name'),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors
                          .blue) //bu kullanım daha üst seviye kod düzeni sağlar class yapısından
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

// burda tekrarlı text yazıcaksam class özeliği kodu üst seviyeye taşır !! önemli
class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.lime,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}

// yazılarıda bir yerde toplamak için class oluşturulması lazım.
class ProjectKeys {
  final String welcome = "merhaba";
}
