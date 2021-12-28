import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';

part 'article_model.g.dart';

@freezed
abstract class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    String? uri,
    String? url,
    int? id,
    int? assetId,
    String? source,
    String? published_date,
    String? updated,
    String? section,
    String? abstract,
    String? subsection,
    String? nytdsection,
    String? adxKeywords,
    String? byline,
    String? type,
    String? title,
    List<String>? desFacet,
    List<String>? orgFacet,
    List<String>? perFacet,
    List<dynamic>? geoFacet,
    List<Media>? media,
    int? etaId,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

class Media {
  Media({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  late final String type;
  late final String subtype;
  late final String caption;
  late final String copyright;
  late final int approvedForSyndication;
  late final List<MediaMetadata> mediaMetadata;

  Media.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    subtype = json['subtype'];
    caption = json['caption'];
    copyright = json['copyright'];
    approvedForSyndication = json['approved_for_syndication'];
    mediaMetadata=[];
    for (int i = 0; i < json['media-metadata'].length; i++) {
      mediaMetadata.add(MediaMetadata.fromJson(json['media-metadata'][i]));
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['subtype'] = subtype;
    _data['caption'] = caption;
    _data['copyright'] = copyright;
    _data['approved_for_syndication'] = approvedForSyndication;
    _data['media-metadata'] = mediaMetadata;
    return _data;
  }
}

class MediaMetadata {
  String? url;
  String? format;
  int? height;
  int? width;

  MediaMetadata(
      {required this.url,
      required this.format,
      required this.height,
      required this.width});

  MediaMetadata.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    format = json['format'];
    height = json['height'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['format'] = this.format;
    data['height'] = this.height;
    data['width'] = this.width;
    return data;
  }
}
