import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/pixabay_images.dart';

part 'pixabay_provider.g.dart';

@riverpod
Future<List<PixabayImage>> pixabayImages(PixabayImagesRef ref, String keywords) async {
  const key = '42165626-4f4f994f055d659e940737f30';
  // final keywords = 'japan flower';
  
  // final url = 'https://pixabay.com/api/?key=42165626-4f4f994f055d659e940737f30&q=okinawa+flowers&image_type=photo&pretty=true';
  final response = await http.get(
    Uri(
      scheme: 'https',
      host: 'pixabay.com',
      path: '/api/',
      queryParameters: {
        'key': key, 
        'q': keywords,
        'image_type': 'photo',
        'pretty': 'true'
      }
    )
  );
  
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final List hits = json['hits'];
  List<PixabayImage> pixabayImages = hits.map((e) => PixabayImage.fromJson(e)).toList();
  return pixabayImages;
}
