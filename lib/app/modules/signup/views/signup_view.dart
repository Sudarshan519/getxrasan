import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/modules/login/views/login_view.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey[200],
                  child: FlutterLogo(
                    size: 90,
                  ),
                  //      backgroundImage: AssetImage("assets/logo.png"),
                ),
              ),
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
              Row(
                children: [
                  Checkbox(value: true, onChanged: (v) {}),
                  Text('Remember me'),
                  Spacer(),
                  Text('Forgot Password')
                ],
              ),
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
              SizedBox(height: 30),
              Center(
                  child: InkWell(
                      onTap: () {
                        Get.to(LoginView());
                      },
                      child: Text('Already have account ? Sign In')))
            ],
          ),
        ),
      ),
    );
  }
}
