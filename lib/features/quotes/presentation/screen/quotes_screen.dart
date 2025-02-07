import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/quotes/presentation/controllers/quote_provider.dart';
import 'package:riverpod_test/features/quotes/presentation/widgets/quotes_widget.dart';

class QuotesScreen extends ConsumerWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: Center(
        child: ref.watch(quotesControllerProvider).when(
              data: (quotes) {
                return QuotesWidget(quotesResponse: quotes);
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(quotesControllerProvider.notifier).getQuotes();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
