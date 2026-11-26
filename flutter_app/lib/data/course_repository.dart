import 'dart:convert';

import 'package:flutter/services.dart';

import 'course.dart';

abstract interface class CourseRepository {
  Future<List<Course>> loadCourses();
}

class AssetCourseRepository implements CourseRepository {
  const AssetCourseRepository();

  @override
  Future<List<Course>> loadCourses() async {
    final source = await rootBundle.loadString('assets/data/courses.json');
    final decoded = jsonDecode(source) as List<dynamic>;
    return decoded
        .map((item) => Course.fromJson(item as Map<String, dynamic>))
        .toList(growable: false);
  }
}
