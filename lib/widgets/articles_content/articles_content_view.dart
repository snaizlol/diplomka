import 'package:flutter/material.dart';

class ArticlesContentView extends StatelessWidget {
  const ArticlesContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles Page'),
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
      ),
      body: const Center(
        child: Text(
          'Articles Page',
        ),
      ),
    );
  }
}
