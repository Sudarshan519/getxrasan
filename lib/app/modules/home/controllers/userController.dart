import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rasanmart/app/data/models/user.dart';
import 'package:rasanmart/app/data/services/userService.dart';
import 'package:rasanmart/app/data/storage/allStorage.dart';
class UserController extends GetxController {
  var userPhoto = ''.obs;
  final picker = ImagePicker();
  var img = null.obs;
  void changePhoto(String photo) {
    this.userPhoto.value = photo;
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      img = File(pickedFile.path).obs;
    } else {
      print('No image selected.');
    }
  }

  Rx<UserModel> user = UserModel().obs;
  void onInit() {
    super.onInit();
    getUser();
    // _firebaseUser.bindStream(_auth.onAuthStateChanged);
  }

  // UserController(UserController userController);
  // UserModel get user =>
  //     _userModel.value ?? UserModel(name: 'slkef', email: 's@gmail.com');
  // set user(UserModel value) => this._userModel.value = value;

  getUser() async {
    var storageUser = allStorage.readuser();
    if (storageUser == null) {
      UserModel userinstance = await CloudUser().getUser();
      user = userinstance.obs;

      print(user.value.toJson());
      allStorage.writeuser(jsonEncode(user.value.toJson()));
    } else {
      // print(storageUser);
      UserModel userinstance = UserModel.fromJson(jsonDecode(storageUser));
      //print(userinstance);

      user = userinstance.obs;
    }
    //print(CloudUser().getUser());
  }

  void clear() {
    user.value = UserModel();
  }
}

final userController = Get.put(UserController());