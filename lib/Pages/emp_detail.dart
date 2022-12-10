import 'package:flutter/material.dart';

class employeeDetail extends StatefulWidget {
  const employeeDetail({Key key}) : super(key: key);

  @override
  State<employeeDetail> createState() => _employeeDetailState();
}

class _employeeDetailState extends State<employeeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/man.jpeg',
              height: 200.0,
            ),
            Card(
              child: Text(
                'Employee Info',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
