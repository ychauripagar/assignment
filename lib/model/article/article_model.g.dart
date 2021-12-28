// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleModel _$_$_ArticleModelFromJson(Map<String, dynamic> json) {
  return _$_ArticleModel(
    uri: json['uri'] as String?,
    url: json['url'] as String?,
    id: json['id'] as int?,
    assetId: json['assetId'] as int?,
    source: json['source'] as String?,
    published_date: json['published_date'] as String?,
    updated: json['updated'] as String?,
    section: json['section'] as String?,
    abstract: json['abstract'] as String?,
    subsection: json['subsection'] as String?,
    nytdsection: json['nytdsection'] as String?,
    adxKeywords: json['adxKeywords'] as String?,
    byline: json['byline'] as String?,
    type: json['type'] as String?,
    title: json['title'] as String?,
    desFacet:
        (json['desFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
    orgFacet:
        (json['orgFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
    perFacet:
        (json['perFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
    geoFacet: json['geoFacet'] as List<dynamic>?,
    media: (json['media'] as List<dynamic>?)
        ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
        .toList(),
    etaId: json['etaId'] as int?,
  );
}

Map<String, dynamic> _$_$_ArticleModelToJson(_$_ArticleModel instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'assetId': instance.assetId,
      'source': instance.source,
      'published_date': instance.published_date,
      'updated': instance.updated,
      'section': instance.section,
      'abstract': instance.abstract,
      'subsection': instance.subsection,
      'nytdsection': instance.nytdsection,
      'adxKeywords': instance.adxKeywords,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'media': instance.media,
      'etaId': instance.etaId,
    };
