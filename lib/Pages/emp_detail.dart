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
        body:SafeArea(
          child:  SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/121.jpg',
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
            ),
          ),
        )
    );
  }
}
