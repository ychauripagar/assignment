import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarro_flutter_app/model/article/article_model.dart';
import 'package:nagarro_flutter_app/services/article_bloc/article_bloc.dart';
import 'package:nagarro_flutter_app/services/article_bloc/article_locator.dart';

import 'article_details_screen.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///register the Article Bloc instance in Article Locator,
    ///It will register single Instance of Article Bloc which will be available
    ///through out the app.
    articleLocator
        .registerSingleton<ArticleBloc>(BlocProvider.of<ArticleBloc>(context));

    /// authLocator.allowReassignment = true will allow resigning the bloc to
    /// Article locator , This will be useful if the two users are signing in
    /// using same device
    articleLocator.allowReassignment = true;
  }

  @override
  Widget build(BuildContext context) {
    NetworkImage getImage(ArticleModel? articleModel) {
      try {
        return NetworkImage(articleModel!
            .media![0]
            .mediaMetadata[articleModel.media![0].mediaMetadata.length - 1]
            .url!);
      } catch (e) {
        return NetworkImage(
            'https://cdn.pixabay.com/photo/2017/02/12/21/29/false-2061132_1280.png');
      }
    }

    Widget articleCardItem(ArticleModel? articleModel) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArticleDetailsScreen(articleModel: articleModel!,)),
          );
        },
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 0.1, vertical: 1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            leading: Hero(
              tag: '${articleModel!.id}',
              child: CircleAvatar(
                backgroundImage: getImage(articleModel),
                radius: 40,
              ),
            ),
            // leading: CircleAvatar(child: Icon(Icons.person_rounded)),
            title: Text(
              articleModel.title ?? '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  articleModel.byline ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        articleModel.section ?? '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        articleModel.published_date ?? '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NY Times Most Popular',
        ),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(120, 225, 195, 1),
      ),
      drawer: Container(
        color: Colors.white,
        width: 200,
        child: ListView(
          children: [
            ListTile(
              title: Text('Demo page 1'),
            ),
            ListTile(
              title: Text('Demo page 2'),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: articleLocator.get<ArticleBloc>().articleList!.length,
          itemBuilder: (BuildContext ctx, index) {
            return articleCardItem(
                articleLocator.get<ArticleBloc>().articleList![index]);
          }),
    );
  }
}
