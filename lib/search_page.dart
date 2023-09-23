import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = '';
  List<String> searchResults = [];

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
    });
    // Implement autocomplete logic and update searchResults
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget> [
        const SizedBox(height: 20.0,),
        Container(
          width: 400.0,
          height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(75.0), // Border radius
          ),
          child: const Padding(
          padding: EdgeInsets.symmetric(horizontal:8.0, vertical: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Sutra...', // Placeholder text
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Padding inside the box
              border: InputBorder.none, // Remove the default border
              suffixIcon: Icon(Icons.search), // Optional search icon
            ),
          ),
        ),
    ),
    ],
    );
  }
}
