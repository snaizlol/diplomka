import 'package:flutter/material.dart';

class SearchContentView extends StatelessWidget {
  const SearchContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
        title: const Text(
          'Search Page',
        ),
      ),
      body: const Center(
        child: Text(
          'Search page',
        ),
      ),
    );
  }
}
