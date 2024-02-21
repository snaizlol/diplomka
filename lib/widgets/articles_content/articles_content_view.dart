import 'package:flutter/material.dart';

class ArticlesContentView extends StatelessWidget {
  const ArticlesContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles Page'),
      ),
      body: const Center(
        child: Text(
          'Articles Page',
        ),
      ),
    );
  }
}
