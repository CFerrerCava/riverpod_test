import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});

final descriptionProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});
