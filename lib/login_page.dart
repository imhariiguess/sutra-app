import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sutra/register.dart';
import 'package:sutra/alt_login.dart';
import 'package:sutra/home_page.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewWidget();
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Stack(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/sutra_logo.png'),
                    height: 148,
                    width: 148,
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  const Text(
                    'Log in to your account',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add your login logic here
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(
                        text: 'See other login options',
                        style: const TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AltLoginPage()),
                          );
                          }
                      ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16.0, // Adjust as needed
            left: 0, // Align to the left
            right: 0, // Align to the right
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'New to Sutra? ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Text color
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Join now',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
