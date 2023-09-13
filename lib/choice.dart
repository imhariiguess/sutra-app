import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

      @override
      Widget build(BuildContext context) {
            return Scaffold(
                  appBar:
                      AppBar(
                            backgroundColor: Colors.transparent,
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
                                    ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.deepOrange
                                          ),
                                          onPressed: () {
                                                // Handle the learner option
                                                Navigator.pushNamed(context, '/learner');
                                          },
                                          icon: Image.asset(
                                              'assets/person.png',
                                                width: 48,
                                                height: 48,
                                          ),
                                          label: const Text('I am a Learner'),
                                    ),
                                    const SizedBox(height: 20.0),
                                    ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.deepOrange,
                                          ),
                                          onPressed: () {
                                                // Handle the educator option
                                                Navigator.pushNamed(context, '/educator');
                                          },
                                          icon: Image.asset(
                                                'assets/person.png',
                                                width: 48,
                                                height: 48,
                                          ),
                                          label: const Text('I am an Educator'),
                                    ),
                              ],
                        ),
                  ),
            );
      }
}
