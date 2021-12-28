part of 'article_bloc.dart';

@freezed
abstract class ArticleEvent with _$ArticleEvent {
  factory ArticleEvent.loadArticles() = _LoadArticleEvent;
}
