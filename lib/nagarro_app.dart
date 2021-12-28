import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarro_flutter_app/screen/article_screen.dart';
import 'package:nagarro_flutter_app/services/article_bloc/article_bloc.dart';

import 'common_widget/common_loading_widget.dart';

class NagarroApp extends StatelessWidget {
  final String flavor;

  /// To determine which flavor of App we are running
  NagarroApp({required this.flavor});

  /// This widget is the root of your application.
  /// Added for navigating without context
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: getBlocProviders(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Nagarro Demo',
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // ignore: missing_return
        home: BlocListener<ArticleBloc, ArticleState>(
          listener: (context, state) {},
          child: BlocBuilder<ArticleBloc, ArticleState>(
            builder: (context, state) {
              return state.when(articleLoaded: () {
                return const ArticleScreen();
              }, initial: () {
                return const CommonLoadingWidget();
              }, loading: () {
                return const CommonLoadingWidget();
              });
            },
          ),
        ),
      ),
    );
  }
}

///gets the bloc providers
List<BlocProvider> getBlocProviders() {
  return [
    BlocProvider<ArticleBloc>(
      create: (context) => ArticleBloc(articleRepository: ArticleRepository(Dio()))
        ..add(ArticleEvent.loadArticles()),
    ),
  ];
}
