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
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(8.0), // Border radius
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search Sutra...', // Placeholder text
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Padding inside the box
              border: InputBorder.none, // Remove the default border
              suffixIcon: Icon(Icons.search), // Optional search icon
            ),
          ),
        ),

        TextField(
          onChanged: updateSearchQuery,
          decoration: const InputDecoration(
            hintText: 'Search...',
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: searchResults.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(searchResults[index]),
                // Handle item selection or navigation here
              );
            },
          ),
        ),
      ],
    );
  }
}
