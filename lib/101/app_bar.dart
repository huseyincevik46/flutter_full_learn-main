import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title =
      'Welcome home'; // buraya ilk aşamada koydun sonra bunu classdan alıcaksın.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _title), // burda text içi Stringi yazmadan yukarıya tanımlayıp almak lazım.
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // appbar kutusu bodyle birmiş gibi oluyor.
        systemOverlayStyle:
            SystemUiOverlayStyle.light, //üst saat felan olan yerin rengi
        automaticallyImplyLeading:
            false, // otomatik back buttonu gelmesin demek
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_as_unread_sharp),
          ),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: const Column(children: []),
    );
  }
}
// !! appbarlar sabit oldugu için mainde appbar 