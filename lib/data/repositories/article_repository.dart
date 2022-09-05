import 'package:clean_architechture_getx/data/providers/network/gateway/article_gateway.dart';
import 'package:clean_architechture_getx/domain/repositories/article_repository.dart';
import '../model/response/paging_model.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  @override
  Future<PagingModel> fetchHeadline(int page, int pageSize) async {
    final response =
        await ArticleGateway.fetchHeadline(page, pageSize).request();
    return PagingModel.fromJson(response);
  }

  @override
  Future<PagingModel> fetchNewsByCategory(
      String keyword, int page, int pageSize) async {
    final response =
        await ArticleGateway.fetchNews(keyword, page, pageSize).request();
    return PagingModel.fromJson(response);
  }
}
