// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotesResponseImpl _$$QuotesResponseImplFromJson(Map<String, dynamic> json) =>
    _$QuotesResponseImpl(
      sId: json['sId'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authorSlug: json['authorSlug'] as String?,
      length: (json['length'] as num?)?.toInt(),
      dateAdded: json['dateAdded'] as String?,
      dateModifie: json['dateModifie'] as String?,
    );

Map<String, dynamic> _$$QuotesResponseImplToJson(
        _$QuotesResponseImpl instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'content': instance.content,
      'author': instance.author,
      'tags': instance.tags,
      'authorSlug': instance.authorSlug,
      'length': instance.length,
      'dateAdded': instance.dateAdded,
      'dateModifie': instance.dateModifie,
    };
