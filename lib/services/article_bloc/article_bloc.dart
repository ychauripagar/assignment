import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nagarro_flutter_app/common/api_constants.dart';
import 'package:nagarro_flutter_app/model/article/article_model.dart';
import 'package:http/http.dart' as http;

part 'article_bloc.freezed.dart';

part 'article_event.dart';

part 'article_repository.dart';

part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository articleRepository;

  List<ArticleModel?>? _articleList = [];

  List<ArticleModel?>? get articleList {
    return _articleList;
  }

  ArticleBloc({
    required this.articleRepository,
  }) : super(const _ArticleStateInitial()) {
    on<ArticleEvent>((gEvent, emit) async {
      await gEvent.map(
        loadArticles: (gEvent) => _mapLoadArticleEventToState(gEvent, emit),
      );
    });
  }

  Future<void> _mapLoadArticleEventToState(
      ArticleEvent gEvent, Emitter<ArticleState> emit) async {
    emit(const ArticleState.loading());
    _articleList = await articleRepository.getArticles(ApiConstants.Articles_API);
    emit(const ArticleState.articleLoaded());
    print('getArticleDetails');
  }
}
