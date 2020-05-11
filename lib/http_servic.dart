import 'dart:convert';

import 'package:fultter_app/post_model.dart';
import 'package:http/http.dart';

class HttpService {
  final String postUrl = "http://162.247.76.211:3000/UpdateNotifiCount";

  Future<List<Post>> getPosts() async {
    Response res = await get(postUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get post";
    }
  }
}
