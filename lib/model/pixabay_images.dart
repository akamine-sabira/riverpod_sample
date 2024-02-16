import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_images.freezed.dart';
part 'pixabay_images.g.dart';

@freezed
class PixabayImage with _$PixabayImage {
  factory PixabayImage({
    required int id,
    required String previewURL,
    required String largeImageURL,
  }) = _PixabayImage;

  factory PixabayImage.fromJson(Map<String, dynamic> json) =>
    _$PixabayImageFromJson(json);
}