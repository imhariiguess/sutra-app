import 'package:flutter/material.dart';

class DMPage extends StatelessWidget {
  const DMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direct Messages'),
        backgroundColor: Colors.deepOrange, // Set the AppBar to be transparent
        elevation: 0, // Remove the shadow
        automaticallyImplyLeading: false, // Remove the back button
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: const [
          ChatWidget(
            userName: 'Kasyap',
            message: 'Can you help me with field theory?',
            isUnread: true, // Mark the first chat as unread
          ),
          ChatWidget(
            userName: 'Tejaswini',
            message: 'Sure, I will send you some material on electronics',
          ),
          ChatWidget(
            userName: 'Murty',
            message: 'Change the lower limits and try',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add an action for the floating button (e.g., create a new chat)
        },
        backgroundColor: Colors.deepOrange, // Set the button color
        child: const Icon(Icons.add), // Add a plus icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position the button
    );
  }
}

class ChatWidget extends StatelessWidget {
  final String userName;
  final String message;
  final bool isUnread;

  const ChatWidget({super.key,
    required this.userName,
    required this.message,
    this.isUnread = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Adjust padding
      leading: CircleAvatar(
        backgroundColor: Colors.deepOrange, // Set the background color to deepOrange
        radius: 30.0, // Increase the size of the icon
        child: Text(
          userName[0],
          style: const TextStyle(
            color: Colors.white, // Text color in the circle
            fontWeight: FontWeight.bold,
            fontSize: 24.0, // Increase the font size
          ),
        ),
      ),
      title: Text(
        userName,
        style: TextStyle(
          fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
          fontSize: 20.0, // Increase the font size
        ),
      ),
      subtitle: Text(
        message,
        style: const TextStyle(
          fontSize: 18.0, // Increase the font size of the message
        ),
      ),
      onTap: () {
        // Add an action when the chat is tapped (e.g., open the chat screen)
      },
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DMPage(),
  ));
}
