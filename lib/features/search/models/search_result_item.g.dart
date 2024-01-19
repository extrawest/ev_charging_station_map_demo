// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultItemImpl _$$SearchResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemImpl(
      fullName: json['full_name'] as String,
      htmlUrl: json['html_url'] as String,
      owner: GithubUser.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultItemImplToJson(
        _$SearchResultItemImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'html_url': instance.htmlUrl,
      'owner': instance.owner,
    };
