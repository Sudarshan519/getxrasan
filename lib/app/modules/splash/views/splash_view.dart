import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
        Container(
          margin: EdgeInsets.only(left:20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Expanded(child: Center(child: FlutterLogo())),
  
            CircularProgressIndicator( valueColor: new AlwaysStoppedAnimation<Color>(Theme.of(context).scaffoldBackgroundColor),),
            SizedBox(height:40),
            Row(children: [
              Text('1.0.0'),
              Spacer(),
              Text('Rasan Mart')
            ],),
            SizedBox(height:40)
          ],),
        )
    
    );
  }
}
