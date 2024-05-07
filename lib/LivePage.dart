import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live'),
        backgroundColor: Colors.deepOrange, // Set the AppBar to be transparent
        elevation: 0, // Remove the shadow
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Oops! None are live :(',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Highlights',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              HighlightCard(
                thumbnailAsset: 'assets/array_multipliers.jpg',
                title: 'Learn Array Multipliers in 10 minutes',
                username: 'Tutorialspoint',
                onTap: () {
                  // Handle row click for the first row
                  // Add your navigation or other actions here
                },
              ),
              const SizedBox(height: 16),
              HighlightCard(
                thumbnailAsset: 'assets/barrel shifter.jpg',
                title: 'How do barrel shifters work?',
                username: 'Sumit Roy Studies',
                onTap: () {
                  // Handle row click for the second row
                  // Add your navigation or other actions here
                },
              ),
              const SizedBox(height: 16),
              HighlightCard(
                thumbnailAsset: 'assets/demux.jpg',
                title: 'What are Multiplexers?',
                username: 'All About ELectronics',
                onTap: () {
                  // Handle row click for the third row
                  // Add your navigation or other actions here
                },
              ),
              const SizedBox(height: 16),
              HighlightCard(
                thumbnailAsset: 'assets/digital electronics.jpg',
                title: 'Introduction to Digital ELectronics',
                username: 'All About Electronics',
                onTap: () {
                  // Handle row click for the fourth row
                  // Add your navigation or other actions here
                },
              ),
              const SizedBox(height: 16),
              HighlightCard(
                thumbnailAsset: 'assets/downsampling.jpg',
                title: 'How to Solve Down Sampling Problems?',
                username: 'Dr Pallavi Ignale',
                onTap: () {
                  // Handle row click for the fifth row
                  // Add your navigation or other actions here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HighlightCard extends StatelessWidget {
  final String thumbnailAsset;
  final String title;
  final String username;
  final VoidCallback? onTap; // Callback for row click

  HighlightCard({
    required this.thumbnailAsset,
    required this.title,
    required this.username,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap callback when the row is clicked
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(thumbnailAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis, // Add this line
                  ),
                  Text(
                    'by $username',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LivePage(),
  ));
}
