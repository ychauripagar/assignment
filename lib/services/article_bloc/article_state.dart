part of 'article_bloc.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _ArticleStateInitial;
  const factory ArticleState.loading() = _ArticleStateLoading;
  const factory ArticleState.articleLoaded() = _ArticleStateLoaded;
}
