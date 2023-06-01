import 'package:flutter/material.dart';
import 'package:post_comments/pages/posts_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Blog blob"),
          ),
          drawer: Drawer(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (cx) => const PostsPage()),
                    ),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Icon(Icons.post_add),
                          const SizedBox(width: 15),
                          const Text(
                            "Posts",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
