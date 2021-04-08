import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/modules/login/views/loginsuccess_view.dart';
import 'package:rasanmart/app/modules/signup/views/signup_view.dart';

import '../controllers/login_controller.dart';
import 'forgotpass_view.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                'Log In',
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
                  InkWell(
                      onTap: () {
                        Get.to(ForgotpassView());
                      },
                      child: Text('Forgot Password'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Get.to(LoginsuccessView());
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
              SizedBox(height: 30),
              Center(
                  child: InkWell(
                      onTap: () {
                        Get.to(SignupView());
                      },
                      child: Text('Dont have account ? Sign Up')))
            ],
          ),
        ),
      ),
    );
  }
}
