import 'package:clean_architechture_getx/domain/entities/article.dart';

class Paging {
  Paging({
    required this.totalResults,
    required this.articles,
  });

  int totalResults;
  List<Article> articles;
}
