import 'package:flutter/material.dart';
import 'package:winkel/views/buyers/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login Customers Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
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
              decoration: InputDecoration(labelText: 'Enter your password'),
            ),
          ),
          SizedBox(
            height: 20,
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
                "Login",
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
              Text('Dont Have An Accoount?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                  child: Text("Register"))
            ],
          )
        ],
      ),
    ));
  }
}
