import 'package:flutter/material.dart';
import 'package:winkel/views/buyers/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "create customers account",
            style: TextStyle(fontSize: 20),
          ),
          CircleAvatar(
            radius: 64,
            backgroundColor: Colors.lightBlue.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter your name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter your phone number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter your password'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Have An Accoount?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text("Login"))
            ],
          )
        ],
      ),
    );
  }
}
