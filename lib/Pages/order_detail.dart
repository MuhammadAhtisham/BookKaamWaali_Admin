import 'package:flutter/material.dart';

class orderDetail extends StatefulWidget {
  const orderDetail({Key key}) : super(key: key);
  
  @override
  State<orderDetail> createState() => _orderDetailState();
}

class _orderDetailState extends State<orderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(100.0),
        child: Text('Coming Soon'),
      ),
    );
  }
}
