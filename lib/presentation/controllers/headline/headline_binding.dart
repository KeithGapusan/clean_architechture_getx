import 'package:clean_architechture_getx/data/repositories/article_repository.dart';
import 'package:clean_architechture_getx/domain/usecases/fetch_headline_use_case.dart';
import 'package:clean_architechture_getx/presentation/controllers/headline/headline_controller.dart';
import 'package:get/get.dart';

class HeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchHeadlineUseCase(Get.find<ArticleRepositoryImpl>()));
    // Get.lazyPut(() => HeadlineController(Get.find()));
    Get.put(HeadlineController(Get.find()), permanent: true);
  }
}
