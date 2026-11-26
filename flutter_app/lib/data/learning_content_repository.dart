import 'dart:convert';

import 'package:flutter/services.dart';

import 'learning_content.dart';

abstract interface class LearningContentRepository {
  Future<LearningContent> load();
}

class AssetLearningContentRepository implements LearningContentRepository {
  const AssetLearningContentRepository();

  @override
  Future<LearningContent> load() async {
    final source = await rootBundle.loadString('assets/data/lab_v4.json');
    return LearningContent.fromJson(jsonDecode(source) as Map<String, dynamic>);
  }
}
