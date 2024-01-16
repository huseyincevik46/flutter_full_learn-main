// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_full_learn/202/service/post_mode.dart';

// import 'post_servic.dart';

// class ServiceLearn extends StatefulWidget {
//   const ServiceLearn({super.key});

//   @override
//   State<ServiceLearn> createState() => _ServiceLearnState();
// }

// class _ServiceLearnState extends State<ServiceLearn> {
//   List<PostModel>? _items;
//   String? name;
//   bool _isloading = false;
//   late final Dio _dio;
//   final _baseUrl = 'https://jsonplaceholder.typicode.com';

//   // TEST EDİLEBİLİR BİR KOD BAŞLADI
//   late final IPostService _postService;

//   @override
//   void initState() {
//     // dataoların ilk çagrıldığı yer initState
//     super.initState();
//     _dio = Dio(BaseOptions(baseUrl: _baseUrl));
//     _postService = PostService();
//     name = 'Hüseyin';
//     fetchPostItemsAdvance();
//   }

//   void _changeLoading() {
//     setState(() {
//       _isloading = !_isloading;
//     });
//   }

//   Future<void> fetchPostItems() async {
//     _changeLoading();
//     final response = await Dio().get('posts');

//     if (response.statusCode == HttpStatus.ok) {
//       final _datas = response.data;

//       if (_datas is List) {
//         setState(() {
//           _items = _datas.map((e) => PostModel.fromJson(e)).toList();
//         });
//       }
//     }
//     _changeLoading();
//   }

//   Future<void> fetchPostItemsAdvance() async {
//     //dataları çekmek için fonksiyon
//     _changeLoading();
//     final _items = await _postService.fetchPostItemsAdvance();
//     _changeLoading();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name ?? ''),
//         actions: [
//           _isloading
//               ? const CircularProgressIndicator.adaptive()
//               : const SizedBox()
//         ],
//       ),
//       body: _items == null
//           ? const Placeholder()
//           : ListView.builder(
//               // servisten gelicek sıralı dataları göstermek için listview.builder kullandık.
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               itemCount: _items?.length ?? 0,
//               itemBuilder: (context, index) {
//                 return _PostCard(model: _items![index]);
//               },
//             ),
//     );
//   }
// }

// class _PostCard extends StatelessWidget {
//   const _PostCard({
//     super.key,
//     required PostModel model,
//   }) : _model = model;

//   final PostModel? _model;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: ListTile(
//         title: Text(_model?.title ?? ''),
//         subtitle: Text(_model?.body ?? ''),
//       ),
//     );
//   }
// }
