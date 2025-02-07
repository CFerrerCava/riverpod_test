import 'package:flutter/material.dart';
import 'package:riverpod_test/core/config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Home Screen',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.routeNames.keys.elementAt(index),
                  );
                },
                child: Text(Routes.routeNames.keys.elementAt(index)),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: Routes.routeNames.length,
            ),
          ],
        ),
      ),
    );
  }
}
