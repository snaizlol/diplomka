import 'package:diplomka/pages/articles_page.dart';
import 'package:diplomka/pages/search_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      backgroundColor: Colors.yellow,
    );
  }
}
