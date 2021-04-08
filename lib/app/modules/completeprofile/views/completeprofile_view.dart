import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/data/widgets/custom_textfield.dart';

import '../controllers/completeprofile_controller.dart';

class CompleteprofileView extends GetView<CompleteprofileController> {
  final bool isUpdate;
  final TextEditingController password = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  CompleteprofileView({this.isUpdate = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Proile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Complete Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  inputBorder: OutlineInputBorder(),
                  hintText: 'Username',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  inputBorder: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        inputBorder: OutlineInputBorder(),
                        hintText: 'Street',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextField(
                        inputBorder: OutlineInputBorder(),
                        hintText: 'Phone',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  inputBorder: OutlineInputBorder(),
                  hintText: 'Zip',
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) return null;
                  },
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
                SizedBox(height: 20),
                Center(
                  child: Text(
                      'By continuing your confirm you acceprt to our terms and agreement'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
