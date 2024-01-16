import 'package:flutter/material.dart';

class ContainerSizedboxLearn extends StatelessWidget {
  const ContainerSizedboxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            //kutu oluşturur.içerisine child atanabilir. boyutunu ayarlayabilirsiniz.
            width: 100,
            height: 100,
            child: Text('a'),
          ),
          const SizedBox.shrink(), //boş bir alan oluşturur.
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Text('aa'),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility
                .boxDecoration, // nesne üreterek çagırdık ve kullandık
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
      )
    ],
  );
}

// Projede containerın tasarımı bellidir Boxdecationdan çekerek kullanılır süper ile.
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
            )
          ],
        );
}
