import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/completeprofile_controller.dart';

class CompleteprofileView extends GetView<CompleteprofileController> {
  final TextEditingController password = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Proile'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: double.infinity,
                  child: Text('Continue')),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.red.shade800,
                  primary: Theme.of(context).scaffoldBackgroundColor),
            ),
            Center(
              child: Text(
                  'By continuing your confirm you acceprt to our terms and agreement'),
            )
          ],
        ),
      ),
    );
  }
}
