import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nagarro_flutter_app/common/api_constants.dart';
import 'package:nagarro_flutter_app/services/article_bloc/article_bloc.dart';
import 'package:test/test.dart';

/// This method runs once before any of the unit tests are run.
///
/// It logs in as a user for the scanner so that subsequent API
/// calls can be made using the accessToken that is retrieved.
Future<void> main() async {
  group('Repository Tests', () {
    /// This test retrieves the mostpopular article.
    ///
    /// It verifies that the [ArticleRepository] are working
    /// along with all json conversions to the underlying model classes for
    /// [ArticleModel],
    test('Active most popular Article Test', () async {
      var articleRepo = ArticleRepository(Dio());
      var jobResults = await articleRepo.getArticles(ApiConstants.Articles_API);
      expect(jobResults!.length, greaterThan(0));
      print('test passed');
    });
  });
}
