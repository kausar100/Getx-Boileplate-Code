import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_demo/data/models/post/post_list.dart';
import 'package:flutter_getx_demo/data/network/constants/endpoints.dart';
import 'package:flutter_getx_demo/data/network/dio_client.dart';

class PostApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  PostApi(this._dioClient);

  /// Returns list of post in response
  Future<PostList> getPosts() async {
    try {
      final res = await _dioClient.get(Endpoints.getPosts);
      return PostList.fromJson(res);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
