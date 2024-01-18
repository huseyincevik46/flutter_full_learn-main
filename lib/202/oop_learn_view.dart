import 'package:flutter/material.dart';

import 'package:flutter_full_learn/202/custom_exception.dart';

import 'oop_learn.dart';

class OOPlearnView extends StatefulWidget {
  const OOPlearnView({super.key});

  @override
  State<OOPlearnView> createState() => _OOPlearnViewState();
}

class _OOPlearnViewState extends State<OOPlearnView> {
  FileDownload? download;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        download?.downloadItem(null); // null gelirse ıteme girme dedik
      }),
    );
  }
}
