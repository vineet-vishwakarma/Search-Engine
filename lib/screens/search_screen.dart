import 'package:flutter/material.dart';
import 'package:search_engine_google_clone/widgets/search_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchHeader(),
            const SearchTab(),
          ],
        ),
      ),
    ));
  }
}
