// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PixabayImageImpl _$$PixabayImageImplFromJson(Map<String, dynamic> json) =>
    _$PixabayImageImpl(
      id: json['id'] as int,
      previewURL: json['previewURL'] as String,
      largeImageURL: json['largeImageURL'] as String,
    );

Map<String, dynamic> _$$PixabayImageImplToJson(_$PixabayImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'previewURL': instance.previewURL,
      'largeImageURL': instance.largeImageURL,
    };
