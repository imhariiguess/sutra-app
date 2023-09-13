import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

      @override
      Widget build(BuildContext context) {
            return Scaffold(
                  appBar:
                      AppBar(
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                      ),
                  body: Center(
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                    const Text(
                                          'What are you?',
                                          style: TextStyle(
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 50.0),
                                    SizedBox(
                                          width: 150, // Adjust the width as needed
                                          height: 75,
                                          child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.deepOrange,
                                                ),
                                                onPressed: () {
                                                      // Handle educator choice
                                                },
                                                child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: <Widget>[
                                                            Image.asset(
                                                                  'assets/student-with-graduation-cap.png', // Replace with the correct path to your image
                                                                  width: 24,
                                                                  height: 24,
                                                            ),
                                                            const SizedBox(width: 8),
                                                            const Text(
                                                                  'Learner',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                        fontSize: 20, // Adjust the font size as needed
                                                                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                                                                        color: Colors.white, // Adjust the text color as needed
                                                                  ),
                                                            ),
                                                      ],
                                                ),
                                          ),
                                    ),



                                    const SizedBox(height: 20.0),
                                    SizedBox(
                                          width: 150, // Adjust the width as needed
                                          height: 75,
                                          child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.deepOrange,
                                                ),
                                                onPressed: () {
                                                      // Handle educator choice
                                                },
                                                child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: <Widget>[
                                                            Image.asset(
                                                                  'assets/person.png', // Replace with the correct path to your image
                                                                  width: 24,
                                                                  height: 24,
                                                            ),
                                                            const SizedBox(width: 8),
                                                            const Text(
                                                                  'Educator',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                        fontSize: 20, // Adjust the font size as needed
                                                                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                                                                        color: Colors.white, // Adjust the text color as needed
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
