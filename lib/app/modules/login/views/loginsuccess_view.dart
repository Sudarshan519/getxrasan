import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginsuccessView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Success'),
          centerTitle: true,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.orange[900],
              radius: 50,
              child: Icon(
                Icons.check,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Login Success',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.circular(20)),
            height: 50,
            width: 200,
            child: Text(
              'Back to home',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]));
  }
}
