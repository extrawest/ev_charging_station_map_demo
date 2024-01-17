import 'package:flutter/material.dart';
import 'package:samoilenko_maps_app/common/router.dart';
import 'package:go_router/go_router.dart';

class PagesListScreen extends StatelessWidget {
  const PagesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                GoRouter.of(context).go(firstPageRoute);
              },
              child: const Text('Go to $firstPageRoute'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {
                context.go('/pages/test');
              },
              child: const Text('Go to /pages/test'),
            ),
          ],
        ),
      ),
    );
  }
}
