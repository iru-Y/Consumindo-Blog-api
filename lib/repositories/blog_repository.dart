import 'dart:convert';

import 'package:post_comments/model/blog_entity.dart';
import 'package:http/http.dart' as http;
class BlogRepository{
  Future<List<BlogEntity>> blogSearch () async{
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      var json = jsonDecode(response.body);
      if(response.statusCode == 200){
        return (json as List).map((e) => BlogEntity.fromJson(e)).toList();
      } else {
        return throw Exception("Não encotrado");
      }
  }
}