import 'package:post_comments/generated/json/base/json_field.dart';
import 'package:post_comments/generated/json/blog_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BlogEntity {
	double? userId;
	double? id;
	String? title;
	String? body;

	BlogEntity();

	factory BlogEntity.fromJson(Map<String, dynamic> json) => $BlogEntityFromJson(json);

	Map<String, dynamic> toJson() => $BlogEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}