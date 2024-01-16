import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/container_sizebox_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import '101/column_row_learn.dart';
import '101/google_maps.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder.dart';
import '101/navigation_learn.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';
import '202/tab_learn.dart';
import 'demos/my_collections_demos.dart';
import '101/text_field-learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //projenin şemasının çizildiği yer metarialapp
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LighTheme().theme, // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.red,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.label,
      //     ),
      //     cardTheme: CardTheme(
      //         // bu ileri seviye best practice sunar . projedeki bütün kartlara sağkar
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10))),
      //     appBarTheme: const AppBarTheme(
      //       // burda appbar sabitledik bazı özelliklerini
      //       centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.white,
      //       elevation: 0,
      //     )),
      home: const ServicePostLearn(),
    );
  }
}
