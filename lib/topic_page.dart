import 'package:flutter/material.dart';

class TopicHomePage extends StatefulWidget {
  @override
  _TopicHomePageState createState() => _TopicHomePageState();
}

class _TopicHomePageState extends State<TopicHomePage> {
  bool isAdded = false; // Track whether the topic is added

  void _toggleInterest() {
    setState(() {
      isAdded = !isAdded; // Toggle the interest state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section (Circular Avatar on the left)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    // You can set backgroundImage to your image asset if needed
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Topic Name',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1000 Members Interested'),
                    ],
                  ),
                  Spacer(), // Add space to push the button to the right
                  ElevatedButton(
                    onPressed: () {
                      _toggleInterest(); // Toggle interest state on button click
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      primary: Colors.deepOrange, // Button color
                    ),
                    child: Row(
                      children: [
                        Text(isAdded ? 'Added' : 'Add'),
                        SizedBox(width: 5.0), // Add spacing
                        if (isAdded)
                          Icon(Icons.check, size: 20.0), // Add check mark if 'Added'
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Filters and Sort Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    value: 'New', // Default value
                    items: <String>['New', 'Hot', 'Top'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        // Handle dropdown value change
                      });
                    },
                  ),
                  DropdownButton<String>(
                    value: 'Tag1', // Default value
                    items: <String>['Tag1', 'Tag2', 'Tag3'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        // Handle dropdown value change
                      });
                    },
                  ),
                ],
              ),
            ),
            // Rest of the content goes here
            // ...
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: TopicHomePage()));
}
