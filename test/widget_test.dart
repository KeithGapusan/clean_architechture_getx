// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:clean_architechture_getx/domain/usecases/fetch_headline_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';
import 'repositories/mock_article_repository.dart';

void main() {
  test('Fetch headline test', () async {
    final pageSize = 20;
    final currentPage = 1;

    //Mock data
    final fetchHeadlineUseCase = FetchHeadlineUseCase(MockArticleRepository());
    final paging =
        await fetchHeadlineUseCase.execute(Tuple2(currentPage, pageSize));

    // Verify that data has created.
    expect(paging.articles.length, 20);
  });
}
