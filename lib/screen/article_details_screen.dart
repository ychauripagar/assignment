import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nagarro_flutter_app/model/article/article_model.dart';

class ArticleDetailsScreen extends StatefulWidget {
  ArticleDetailsScreen({Key? key, required this.articleModel})
      : super(key: key);
  final ArticleModel articleModel;

  @override
  _ArticleDetailsScreenState createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    String getImage(ArticleModel? articleModel) {
      try {
        return (articleModel!
            .media![0]
            .mediaMetadata[articleModel.media![0].mediaMetadata.length - 1]
            .url!);
      } catch (e) {
        return 'https://cdn.pixabay.com/photo/2017/02/12/21/29/false-2061132_1280.png';
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Details',
        ),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(120, 225, 195, 1),
      ),
      body: Column(
        children: [
          Hero(
            tag: '${widget.articleModel!.id}',
            child: CachedNetworkImage(
              imageUrl: getImage(widget.articleModel),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.articleModel.title ?? '',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.articleModel.byline ?? '',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Abstract:\n' + widget.articleModel.abstract!,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.articleModel.section ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  widget.articleModel.published_date ?? '',
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
    );
  }
}
