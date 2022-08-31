import 'dart:convert';
import 'dart:io';

import 'package:clean_architechture_getx/data/model/response/paging_model.dart';
import 'package:clean_architechture_getx/domain/entities/paging.dart';
import 'package:clean_architechture_getx/domain/repositories/article_repository.dart';

class MockArticleRepository extends ArticleRepository {
  @override
  Future<PagingModel> fetchHeadline(int page, int pageSize) async {
    final file = File('test/data/headline_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return PagingModel.fromJson(data);
  }

  @override
  Future<Paging> fetchNewsByCategory(String keyword, int page, int pageSize) {
    // TODO: implement fetchNewsByCategory
    throw UnimplementedError();
  }
}
