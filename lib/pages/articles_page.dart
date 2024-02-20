import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles Page'),
      ),
      backgroundColor: Colors.red,
      body: Center(child: Text('Articles Page')),
    );
  }
}
