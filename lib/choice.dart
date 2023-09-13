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
                                    ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.deepOrange,
                                                fixedSize: const Size(100, 50),
                                          ),
                                          onPressed: () {
                                                // Handle learner choice
                                          },
                                          child: const Text('Learner'),
                                    ),

                                    const SizedBox(height: 20.0),
                                    ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.deepOrange,
                                                fixedSize: const Size(100, 50),
                                          ),
                                          onPressed: () {
                                            //Insert student reg page here
                                          },
                                          child: const Text('Educator'),
                                    ),

                              ],
                        ),
                  ),
            );
      }
}
