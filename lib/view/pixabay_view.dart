import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/model/pixabay_images.dart';
import 'package:riverpod_sample/provider/pixabay_provider.dart';
import 'package:riverpod_sample/provider/pixabay_notifier.dart';
import 'package:riverpod_sample/provider/stream.dart';
import 'package:riverpod_sample/provider/synchronous_example.dart';

import 'absence_notification_view.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<PixabayImage>> images = ref.watch(pixabayImagesProvider('kyoto'));
    final AsyncValue<List<PixabayImage>> searchImages = ref.watch(pixabayListProvider);
    int intval = ref.watch(synchronousExampleProvider);
    AsyncValue<int> streamVal = ref.watch(streamExampleProvider);

    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              width: 200,
              child: switch(images) {
                AsyncData(:final value) => SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(final image in value)
                        Image.network(image.previewURL),
                    ]
                  ),
                ),
                AsyncError() => Text('あああ'),
                _ => Text('ううう'),
              },
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    onFieldSubmitted: (text) {
                      ref.read(pixabayListProvider.notifier).search(text);
                    }
                  ),
                  Text('$intval'),
                  switch(streamVal) {
                    AsyncValue(:final error?) => Text('Error: $error'),
                    AsyncValue(:final valueOrNull?) => Text('$valueOrNull'),
                    _ => const CircularProgressIndicator(),
                  },
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AbsenceNotificationPage()));
                    },
                    child: Text('欠席届'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: switch(searchImages) {
                AsyncData(:final value) => SingleChildScrollView(
                    child: Column(
                      children: [
                        for(final aImg in value)
                          Image.network(aImg.largeImageURL),
                      ],
                    ),
                  ),
                AsyncError() => Text('error'),
                _ => Text('ううう'),
              },
            )
          ],
        ),
      )
    );
  }
}