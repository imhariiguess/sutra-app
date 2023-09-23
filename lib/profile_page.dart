import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0), // Space at the top
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/profilepic.jpg'), // Add your profile picture
            ),
            SizedBox(height: 20.0),
            Text(
              'Ben Dover', // Replace with user's name
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '@bendover42069', // Replace with user's username
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            Divider(), // Horizontal line
            TextButton(
              onPressed: () {
                // Add an action for the button (e.g., navigate to user's posts)
              },
              child: ListTile(
                title: Text('Posts'),
                subtitle: Text('57'), // Replace with user's post count
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                // Add an action for the button (e.g., show phone number)
              },
              child: ListTile(
                title: Text('Phone Number'),
                subtitle: Text('+91 8681092342'), // Replace with user's phone number
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                // Add an action for the button (e.g., change password)
              },
              child: ListTile(
                title: Text('Password'),
                subtitle: Text('********'), // Replace with user's password
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                // Add an action for the button (e.g., show peer contacts)
              },
              child: ListTile(
                title: Text('Peer Contacts'),
                subtitle: Text('73'), // Replace with user's peer count
              ),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                // Add an action for the button (e.g., show email)
              },
              child: ListTile(
                title: Text('Email'),
                subtitle: Text('bendover4269@gmail.com'), // Replace with user's email
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add an action for the button (e.g., log out)
              },
              child: Text('Log Out'),
            ),
            SizedBox(height: 20.0), // Space at the bottom
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UserProfilePage(),
  ));
}
