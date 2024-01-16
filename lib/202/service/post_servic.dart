import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'comment_model.dart';
import 'post_mode.dart';

abstract class IPostService {
  // interface çıkarttık daha anlaşılır görünmesi için.
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  fetchRelatedCommentsWithPostId(int postId) {}
}

class PostService implements IPostService {
  late final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } catch (_) {}
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response =
          await _dio.put('${_PostServicePaths.posts.name}/id', data: postModel);

      return response.statusCode == HttpStatus.ok;
    } catch (_) {}
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.put(
        '${_PostServicePaths.posts.name}/id',
      );

      return response.statusCode == HttpStatus.ok;
    } catch (_) {}
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get('posts');

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print('e');
    }
    return null;
  }

  @override
  fetchRelatedCommentsWithPostId(int postId) {
    // TODO: implement fetchRelatedCommentsWithPostId
    throw UnimplementedError();
  }
}

@override
Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
  try {
    final response = await _dio.get(_PostServicePaths.comments.name,
        queryParameters: {_PostQueryPaths.postId.name: postId});

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => CommentModel.fromJson(e)).toList();
      }
    }
  } on DioError catch (exception) {
    _ShowDebug.showDioError(exception, this);
  }
  return null;
}

enum _PostServicePaths { posts, commants, comments }

enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('-----');
    }
  }
}
