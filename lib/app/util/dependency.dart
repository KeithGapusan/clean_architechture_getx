import 'package:clean_architechture_getx/data/repositories/article_repository.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => ArticleRepositoryImpl());
  }
}
