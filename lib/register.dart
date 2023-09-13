import 'package:flutter/material.dart';

import 'choice.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register for a new account'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'e-mail',
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Choice()),
                  );

                },
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      )
      );
    }
  }
