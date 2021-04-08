import 'package:get/get.dart';

import 'package:rasanmart/app/modules/completeprofile/bindings/completeprofile_binding.dart';
import 'package:rasanmart/app/modules/completeprofile/views/completeprofile_view.dart';
import 'package:rasanmart/app/modules/home/bindings/home_binding.dart';
import 'package:rasanmart/app/modules/home/views/home_view.dart';
import 'package:rasanmart/app/modules/login/bindings/login_binding.dart';
import 'package:rasanmart/app/modules/login/views/login_view.dart';
import 'package:rasanmart/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:rasanmart/app/modules/onboarding/views/onboarding_view.dart';
import 'package:rasanmart/app/modules/signup/bindings/signup_binding.dart';
import 'package:rasanmart/app/modules/signup/views/signup_view.dart';
import 'package:rasanmart/app/modules/splash/bindings/splash_binding.dart';
import 'package:rasanmart/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.COMPLETEPROFILE,
      page: () => CompleteprofileView(),
      binding: CompleteprofileBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
  ];
}
