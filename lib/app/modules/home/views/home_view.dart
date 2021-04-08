import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/data/models/category.dart';
import 'package:rasanmart/app/data/widgets/custom_textfield.dart';
import 'package:rasanmart/app/modules/cart/views/cart_view.dart';
import 'package:rasanmart/app/modules/categorydetail/views/categorydetail_view.dart';
import 'package:rasanmart/app/modules/completeprofile/views/completeprofile_view.dart';
import 'package:rasanmart/app/modules/detail/views/detail_view.dart';
import 'package:rasanmart/app/modules/home/controllers/authController.dart';
import 'package:rasanmart/app/modules/home/controllers/product_controller_controller.dart';
import 'package:rasanmart/app/modules/home/controllers/userController.dart';
import 'package:rasanmart/app/modules/login/views/login_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final homeController = Get.put(HomeController());
  final searchController = TextEditingController();
  final productController = Get.put(ProductControllerController());
  final authController = Get.put(AuthController());
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => homeController.show.value
              ? CustomTextField(
                  controller: searchController,
                  inputBorder: InputBorder.none,
                  hintText: 'What are you looking for ?',
                  hintcolor: Colors.white,
                )

              // TextFormField(
              //     textAlign: TextAlign.start,
              //     style: TextStyle(color: Colors.white),
              //     controller: searchController,
              //     decoration: InputDecoration(
              //         contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
              //         hintText: 'What are you looking for?',
              //         hintStyle: TextStyle(color: Colors.white, fontSize: 12),
              //         fillColor: Colors.grey,
              //         border: InputBorder.none,
              //         labelStyle: TextStyle(color: Colors.white),
              //         icon: Icon(Icons.search, color: Colors.white)),
              //   )
              : Text('RasanMart')),
          actions: [
            InkWell(
                onTap: () {
                  // homeController.changeThemeMode();

                  showModalBottomSheet<void>(
                    backgroundColor: Colors.transparent,
                    //     bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black54)
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.only(left: 30, top: 20, right: 20),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  'Select You Theme',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(Icons.close,
                                        size: 10, color: Colors.grey[600]),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Container(
                              height: 20,
                              child: InkWell(
                                onTap: () {
                                  homeController.changeTheme('lightTheme');
                                  // languageController.selectedIndex.value = 0;
                                  // languageController.changeLanguage('en', 'US');
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      'Light Theme',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    //Obx(() =>
                                    //(languageController
                                    //             .selectedIndex.value ==
                                    //         0
                                    // ?
                                    Obx(() =>
                                        homeController.selectedTheme.value ==
                                                'lightTheme'
                                            ? Icon(Icons.check_circle,
                                                color: Colors.green)
                                            : Icon(Icons.check_circle))
                                    // : Text('')),
                                    //   )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 20),
                            Container(
                              height: 20,
                              child: InkWell(
                                onTap: () {
                                  homeController.changeTheme('darkTheme');
                                
                                  // languageController.selectedIndex.value = 1;
                                  // languageController.changeLanguage('hi', 'IN');
                                },
                                child: Row(children: [
                                  Text(
                                    'Dart Theme',
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Spacer(),
                                  //  Obx(() =>
                                  // (languageController
                                  //             .selectedIndex.value ==
                                  //         1?
                                  Obx(() =>
                                      homeController.selectedTheme.value ==
                                              'darkTheme'
                                          ? Icon(Icons.check_circle,
                                              color: Colors.green)
                                          : Text(''))
                                  // : Text('')),
                                  //  )
                                  //   Icon(Icons.check_circle,color:Colors.green)
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 20,
                              child: InkWell(
                                onTap: () {
                                  // languageController.selectedIndex.value = 2;
                                },
                                child: Row(children: [
                                  Text(
                                    'System Default',
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Spacer(),
                                  //Obx(() =>
                                  // (languageController
                                  //             .selectedIndex.value ==
                                  //         2
                                  //     ?
                                  Obx(() =>
                                      homeController.selectedTheme.value ==
                                              'darkTheme'
                                          ? Icon(Icons.check_circle,
                                              color: Colors.green)
                                          : Text(''))
                                  // : Text('')),
                                  //    )
                                  // Icon(Icons.check_circle,color:Colors.green)
                                ]),
                              ),
                            ),

                            // const Text('Modal BottomSheet'),
                            // ElevatedButton(
                            //   child: const Text('Close BottomSheet'),
                            //   onPressed: () => Navigator.pop(context),
                            // )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                    backgroundColor: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(.2),
                    radius: 15,
                    child: Icon(
                      Icons.brightness_3_rounded,
                      color: Colors.white,
                      size: 15,
                    ))),
            SizedBox(width: 10),
            //Icon(Icons.brightness_7_outlined),
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey[100].withOpacity(.2),
                child: Icon(
                  Icons.notifications,
                  size: 15,
                  color: Colors.white,
                )),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Get.to(CartView());
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey[100].withOpacity(.2),
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 15,
                        color: Colors.white,
                      )),
                  Positioned(
                      bottom: 10,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 7,
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 12),
                        ),
                      ))
                ],
              ),
            )
          ],
          //centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName: null,
                  accountEmail: null,
                  // otherAccountsPictures: [CircleAvatar()],
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                  )),
              ListTile(
                  onTap: () {
                    Get.dialog(
                        AlertDialog(
                            content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Thank you for using our services'),
                            // RaisedButton(
                            //   child: Text('Good Login'),
                            //   onPressed: () => Get.back(result: true),
                            //   // ** result: returns this value up the call stack **
                            // ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            TextButton(
                              child: Text('Bad Login'),
                              onPressed: () => Get.back(result: false),
                            ),
                          ],
                        )),
                        barrierDismissible: true);
                  },
                  leading: Icon(Icons.info),
                  title: Text('About Us')),
              ListTile(
                  onTap: () {
                    Get.dialog(
                        AlertDialog(
                            content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // RaisedButton(
                            //   child: Text('Good Login'),
                            //   onPressed: () => Get.back(result: true),
                            //   // ** result: returns this value up the call stack **
                            // ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 2,
                              maxLines: 4,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Text('Send FeedBack'),
                                  SizedBox(width: 10),
                                  Icon(Icons.send)
                                ],
                              ),
                              onPressed: () => Get.back(result: false),
                            ),
                          ],
                        )),
                        barrierDismissible: true);
                  },
                  leading: Icon(Icons.contact_mail),
                  title: Text('FeedBack')),
              ListTile(
                  onTap: () {
                    Get.to(LoginView());
                  },
                  leading: Icon(Icons.login),
                  title: Text('Log In'))
            ],
          ),
        ),
        body: Obx(() {
          switch (homeController.selectedIndex.value) {
            case 0:
              return SingleChildScrollView(
                controller: homeController.scrollController,
                //padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[900].withOpacity(.8),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Your profile is not complete .\nComplete profile by adding your info.',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Get.to(CompleteprofileView());
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'What are you looking for ?'),
                        ),
                      ),
                      // SizedBox(height: 10),
                      // CustomTextField(
                      //   controller: searchController,
                      //   hintText: 'What are you looking for ?',
                      //   hintcolor: Colors.grey,
                      //   inputBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      // ),
                      SizedBox(height: 20),
                      CarouselSlider(
                          items: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.red.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.network(
                                'https://www.rasanmart.com/wp-content/uploads/2020/06/101953524_259183725496744_2867387748120002560_n.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.network(
                                'https://www.rasanmart.com/wp-content/uploads/2020/06/101522295_895508060956667_1800978657359953920_n.png',
                                fit: BoxFit.cover),
                            Image.network(
                                'https://www.rasanmart.com/wp-content/uploads/2020/04/received_2656387371248213.png',
                                fit: BoxFit.cover),
                          ],
                          options: CarouselOptions(
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              autoPlay: true)),
                      SizedBox(height: 20),
                      Text(
                        'Categories',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
                      Categories(),
                      SizedBox(height: 20),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Top Products',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'ViewAll',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ]),
                      SizedBox(height: 20),
                      Container(
                          height: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Obx(() => productController.isloading.value
                              ? Center(child: CircularProgressIndicator())
                              : ListView.builder(
                                  itemCount: productController.products.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, int i) {
                                    return Container(
                                      height: 270,
                                      width: 200,
                                      margin: EdgeInsets.all(10),
                                      color: Colors.grey[300],
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Image.network(
                                              productController
                                                  .products[i].productImage,
                                              height: 125,
                                              width: 125,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            productController
                                                .products[i].productName,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            productController.products[i].price
                                                .toString(),
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(height: 3),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[400],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10))),
                                                    width: 20,
                                                    child: Text('-')),
                                                Container(
                                                    alignment: Alignment.center,
                                                    width: 20,
                                                    child: Text('1')),
                                                Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[400],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10))),
                                                    width: 20,
                                                    child: Text('+'))
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(width: 10),
                                              TextButton(
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.red.shade800),
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Add to cart',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor,
                                                    ),
                                                  )),
                                              SizedBox(width: 10),
                                              TextButton(
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.red.shade800),
                                                  onPressed: () {
                                                    Get.to(DetailView());
                                                  },
                                                  child: Text(
                                                    'View Details',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Theme.of(context)
                                                            .scaffoldBackgroundColor),
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  })))
                    ]),
              );

              break;
            case 1:
              return Scaffold(
                body: ListView(
                  children: [
                    ...category.map((p) => ListTile(
                          onTap: () {
                            Get.to(CategorydetailView(p.categoryName));
                          },
                          leading: Image.network(p.categoryImage),
                          title: Text(
                            p.categoryName,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ))
                  ],
                ),
              );
            case 2:
              return Scaffold(
                  body: Obx(
                () => authController.user == null
                    ? Center(
                        child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Theme.of(context).accentColor,
                            primary: Theme.of(context).primaryColor),
                        onPressed: () {
                          Get.to(LoginView());
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor),
                        ),
                      ))
                    : Scaffold(
                        body: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.network(
                                    authController.user.photoURL,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // Text(authController.user.displayName),
                                Divider(), Text("Name"),

                                ListTile(
                                    title:
                                        Text(userController.user.value.name)),

                                Divider(), Text("Email"),

                                ListTile(
                                    title:
                                        Text(userController.user.value.email)),

                                Divider(), Text("Address"),

                                ListTile(
                                    title: Text(
                                        "${userController.user.value.street},${userController.user.value.city},${userController.user.value.zip}")),
                                Divider(),
                                Text("Phone"),

                                ListTile(
                                    title:
                                        Text(userController.user.value.phone)),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                      ),
              ));
            default:
              return Scaffold();
          }
        }),
        bottomNavigationBar: Obx(() {
          return BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 6,
              color: Colors.blueGrey,
              clipBehavior: Clip.antiAlias,
              child: BottomNavigationBar(
                  selectedItemColor: Theme.of(context).backgroundColor,
                  unselectedItemColor: Colors.blueGrey,
                  currentIndex: homeController.selectedIndex.value ?? 0,
                  onTap: (index) {
                    homeController.changevalue(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: InkWell(
                          child: Icon(
                        Icons.home,
                      )),
                      label: "home".tr,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.card_giftcard),
                      label: 'Categories',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'account'.tr,
                    ),
                  ]));
        }));
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 10, runSpacing: 10, children: [
      ...category
          .map((p) => InkWell(
                onTap: () {
                  Get.to(CategorydetailView(p.categoryName));
                },
                child: Container(
                  height: 77,
                  width: 76,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Image.network(
                          p.categoryImage,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        p.categoryName,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ))
          .toList()
    ]);
  }
}
