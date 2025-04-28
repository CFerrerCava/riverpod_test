import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/features/counter/presentation/providers/counter_provider.dart';

void main() {
  group('CounterNotifier Tests', () {
    test('initial state is 0', () {
      final container = ProviderContainer();

      expect(container.read(counterNotifierProvider.notifier).state, 0);
    });

    test('increment increases count by 1', () {
      final container = ProviderContainer();
      final notifier = container.read(counterNotifierProvider.notifier);

      notifier.state++;
      expect(container.read(counterNotifierProvider), 1);
    });

    test('decrement decreases count by 1', () {
      final container = ProviderContainer();
      final notifier = container.read(counterNotifierProvider.notifier);

      notifier.state--;
      expect(container.read(counterNotifierProvider), -1);
    });

    test('reset returns count to 0', () {
      final container = ProviderContainer();
      final notifier = container.read(counterNotifierProvider.notifier);

      notifier.state++;
      notifier.state--;
      notifier.state = 0;
      expect(container.read(counterNotifierProvider), 0);
    });
  });
}
