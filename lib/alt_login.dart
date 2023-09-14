import 'package:flutter/material.dart';
class AltLoginPage extends StatelessWidget {
  const AltLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250, // Adjust the width as needed
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75), // Adjust the radius as needed
                  ),
                  side: const BorderSide(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                onPressed: () {
                  // Handle educator choice
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage(
                        'assets/google.png', // Replace with the correct path to your image
                      ),
                      size: 24,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '  Login with Google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17, // Adjust the font size as needed
                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                        color: Colors.black, // Adjust the text color as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: 250, // Adjust the width as needed
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75), // Adjust the radius as needed
                  ),
                  side: const BorderSide(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                onPressed: () {
                  // Handle educator choice
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage(
                        'assets/microsoft.png', // Replace with the correct path to your image
                      ),
                      size: 24,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '  Login with Microsoft',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17, // Adjust the font size as needed
                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                        color: Colors.black, // Adjust the text color as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
