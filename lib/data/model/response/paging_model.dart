// ignore_for_file: overridden_fields

import 'package:clean_architechture_getx/data/model/response/article_model.dart';
import 'package:clean_architechture_getx/domain/entities/paging.dart';

class PagingModel extends Paging {
  PagingModel({
    required this.totalResults,
    required this.articles,
  }) : super(articles: articles, totalResults: totalResults);

  final int totalResults;
  final List<ArticleModel> articles;

  @override
  factory PagingModel.fromJson(Map<String, dynamic> json) => PagingModel(
        totalResults: json["totalResults"],
        articles:
            List.from(json["articles"].map((x) => ArticleModel.fromJson(x))),
      );
}
