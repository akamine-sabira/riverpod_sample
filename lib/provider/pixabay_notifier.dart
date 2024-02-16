import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_sample/model/pixabay_images.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pixabay_notifier.g.dart';

@riverpod
class PixabayList extends _$PixabayList {
  @override
  Future<List<PixabayImage>> build() async => [];
  
  Future<void> search(String keywords) async {
    const domain = 'pixabay.com';
    const path = '/api/';
    const key = '42165626-4f4f994f055d659e940737f30';
    final query = {
      'key': key, 
      'q': keywords,
      'image_type': 'photo',
      'pretty': 'true'
    };
    final response = await http.get(Uri.https(domain, path, query));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final List hits = json['hits'];
    List<PixabayImage> pixabayImages = hits.map((e) => PixabayImage.fromJson(e)).toList();

    state = AsyncData(pixabayImages);
  }
}