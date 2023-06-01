import 'package:post_comments/generated/json/base/json_convert_content.dart';
import 'package:post_comments/model/blog_entity.dart';

BlogEntity $BlogEntityFromJson(Map<String, dynamic> json) {
	final BlogEntity blogEntity = BlogEntity();
	final double? userId = jsonConvert.convert<double>(json['userId']);
	if (userId != null) {
		blogEntity.userId = userId;
	}
	final double? id = jsonConvert.convert<double>(json['id']);
	if (id != null) {
		blogEntity.id = id;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		blogEntity.title = title;
	}
	final String? body = jsonConvert.convert<String>(json['body']);
	if (body != null) {
		blogEntity.body = body;
	}
	return blogEntity;
}

Map<String, dynamic> $BlogEntityToJson(BlogEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['userId'] = entity.userId;
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['body'] = entity.body;
	return data;
}