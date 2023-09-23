import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TopicHomePage(),
  ));
}

class TopicHomePage extends StatelessWidget {
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
                    backgroundImage: AssetImage('assets/embedded.png'),
                    // You can set backgroundImage to your image asset if needed
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Embedded Sys',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1000 Members'),
                    ],
                  ),
                  Spacer(), // Add space to push the button to the right
                  ElevatedButton(
                    onPressed: () {
                      // Handle button click
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      primary: Colors.deepOrange, // Button color
                    ),
                    child: Text('Add'),
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
                      // Handle dropdown value change
                    },
                  ),
                  DropdownButton<String>(
                    value: 'All', // Default value
                    items: <String>['All', 'Questions', 'Informative'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      // Handle dropdown value change
                    },
                  ),
                ],
              ),
            ),
            // Five Rectangular Containers with Different Content
            PostCard(
              profileImageAsset: 'assets/student-with-graduation-cap.png',
              userName: 'Varun Nigam',
              hoursAgo: 'Posted 2 hours ago',
              postDetails: 'Hi guys! I am new to the field of embedded systems. I am creating a project which involves linking up of all manhole covers spread across a city. I decided to go about this issue by making use of NodeMCU, tilt sensors and an MQ-2 gas switch. The problem I am facing is, how do I power these circuits?',
            ),
            PostCard(
              profileImageAsset: 'assets/thalaivi.jpg',
              userName: 'Tejaswini Balaji',
              hoursAgo: 'Posted 5 hours ago',
              postDetails: 'I want to design an energy-efficient embedded system for monitoring and controlling smart home devices to optimize power consumption and enhance user convenience. How can I go about doing this? People who are interested to work on this together, please DM!',
            ),
            PostCard(
              profileImageAsset: 'assets/student-with-graduation-cap.png',
              userName: 'Vangipuram Shrihari',
              hoursAgo: 'Posted 10 hours ago',
              postDetails: 'I want to create a low-cost embedded solution to detect and prevent industrial equipment failures through predictive maintenance, minimizing downtime and maintenance costs. Can someone please help me to come up with a solution for this?',
            ),
            PostCard(
              profileImageAsset: 'assets/jimbu.jfif',
              userName: 'Telikepalli Kasyap',
              hoursAgo: 'Posted 1 day ago',
              postDetails: 'I have been given a project to design an embedded system for remote patient monitoring that ensures data security and privacy while providing timely healthcare alerts to medical professionals. I need guidance from people who have experience in this field!',
            ),
            PostCard(
              profileImageAsset: 'assets/student-with-graduation-cap.png',
              userName: 'T. VR Murty',
              hoursAgo: 'Posted 3 days ago',
              postDetails: 'Can someone help me to develop an embedded system for efficient and secure data processing in IoT networks, addressing the challenges of data integrity, authentication, and scalability. I want this to be finished by next week. Volunteers much needed!',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button click
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String profileImageAsset;
  final String userName;
  final String hoursAgo;
  final String postDetails;

  PostCard({
    required this.profileImageAsset,
    required this.userName,
    required this.hoursAgo,
    required this.postDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundImage: AssetImage(profileImageAsset),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      hoursAgo,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                postDetails,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.thumb_down),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
