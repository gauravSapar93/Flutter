import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/authentication/screens/login/login_screen.dart';

class LoginScreenOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true, // Hide the password text
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your authentication logic here
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
