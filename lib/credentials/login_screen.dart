import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 800,
            width: 700,
            child: Image.network('https://cdn.pixabay.com/photo/2021/01/27/11/01/office-desk-5954672__480.jpg',
            ),
          ),
          Expanded( //<-- Expanded widget
            child: Container(
              constraints: const BoxConstraints(maxWidth: 15),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Login Now')),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
