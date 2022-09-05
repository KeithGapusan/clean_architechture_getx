import 'package:clean_architechture_getx/data/providers/environment/environment.dart';

import '../api_endpoint.dart';
import '../api_provider.dart';
import '../api_request_representable.dart';

enum ArticleType { fetchHeadline, fetchNews }

class ArticleGateway implements APIRequestRepresentable {
  final ArticleType type;
  String? keyword;
  int? page;
  int? pageSize;

  ArticleGateway._(
      {required this.type, this.keyword, this.page, this.pageSize});

  ArticleGateway.fetchHeadline(int page, int pageSize)
      : this._(type: ArticleType.fetchHeadline, page: page, pageSize: pageSize);
  ArticleGateway.fetchNews(String keyword, int page, int pageSize)
      : this._(
            type: ArticleType.fetchNews,
            keyword: keyword,
            page: page,
            pageSize: pageSize);

  @override
  String get endpoint => APIEndpoint.newsapi;

  @override
  String get path {
    switch (type) {
      case ArticleType.fetchHeadline:
        return "/top-headlines";
      case ArticleType.fetchNews:
        return "/top-headlines";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  Map<String, String> get headers => {"X-Api-Key": Environment.xAuthKey};

  Map<String, String> get query {
    switch (type) {
      case ArticleType.fetchHeadline:
        return {"country": "us", "page": "$page", "pageSize": "$pageSize"};
      case ArticleType.fetchNews:
        return {"page": "$page", "pageSize": "$pageSize", "q": keyword ?? ""};
    }
  }

  @override
  get body => null;

  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => Environment.apiUrl + path;
}
