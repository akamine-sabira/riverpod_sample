import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AbsenceNotificationPage extends ConsumerWidget {
  const AbsenceNotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('欠席届'),
      ),
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}