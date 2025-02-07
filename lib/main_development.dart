import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/app/app.dart';
import 'package:riverpod_test/bootstrap.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
