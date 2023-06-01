import 'package:flutter/material.dart';
import 'package:post_comments/model/blog_entity.dart';
import 'package:post_comments/pages/initi_page.dart';
import 'package:post_comments/repositories/blog_repository.dart';
import 'package:http/http.dart' as http;

class PostsPage extends StatefulWidget {


  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  var _blogEntity = <BlogEntity>[];
  var _blogRepository = BlogRepository();

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  _loadData () async{
    _blogEntity = await _blogRepository.blogSearch();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: ()=> Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> const InitPage())),
                icon: const Icon(Icons.arrow_back)
            ),
            Text("Posts"),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18
        ),
        child: Column(
          children: [
            Card(
              elevation: 16,
              child: SizedBox(
                height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ListView.builder(
                        itemCount: _blogEntity.length,
                        itemBuilder: (context, index) {
                          BlogEntity posts = _blogEntity[index];
                          return Text(posts.title ?? "Nada a declarar", style: TextStyle(color: Colors.black),);
                        },
                    ),
                  )
            ))
          ],
        ),
      )
    );
  }
}
