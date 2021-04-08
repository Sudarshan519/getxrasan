import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/data/models/category.dart';
import 'package:rasanmart/app/modules/login/views/login_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: Text('RasanMart'),
          title: Obx(() => homeController.show.value
              ? TextFormField(
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                  controller: searchController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
                      hintText: 'What are you looking for?',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Icon(Icons.search, color: Colors.white)),
                )
              : Text('RasanMart')),
          actions: [
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey[200].withOpacity(.4),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
            SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[200].withOpacity(.4),
                    child: Icon(
                      Icons.add_shopping_cart,
                      size:20,
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
              ListTile(title: Text('About Us')),
              ListTile(title: Text('Log In'))
            ],
          ),
        ),
        body: Obx(() {
          switch (homeController.selectedIndex.value) {
            case 0:
              return SingleChildScrollView(
                controller: homeController.scrollController,
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      SizedBox(height: 20),
                      CarouselSlider(items: [
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
                      ], options: CarouselOptions(enlargeCenterPage: true)),
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
                        Text(
                          'Top Products',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w600),
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
                          height: 250,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, int i) {
                                return Container(
                                  height: 250,
                                  width: 200,
                                  margin: EdgeInsets.all(10),
                                  color: Colors.grey[300],
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'https://www.rasanmart.com/wp-content/uploads/2020/06/101953524_259183725496744_2867387748120002560_n.png',
                                        height: 125,
                                        width: 125,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        'Camera',
                                      ),
                                      Text(
                                        'Rs. 20000',
                                      ),
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
                                                                .circular(10),
                                                            bottomLeft:
                                                                Radius.circular(
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
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10))),
                                                width: 20,
                                                child: Text('+'))
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Colors.red.shade800),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor),
                                          ))
                                    ],
                                  ),
                                );
                              }))
                    ]),
              );

              break;
            case 1:
              return Scaffold(
                body: ListView(
                  children: [
                    ...category.map((p) => ListTile(
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
                body: Center(
                    child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).backgroundColor,
                      primary: Theme.of(context).primaryColor),
                  onPressed: () {
                    Get.to(LoginView());
                  },
                  child: Text('Sign in'),
                )),
              );
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
                  // Get.to(
                  //     CategoriesPage(
                  //       p.categoryName,
                  //     ),
                  //     transition: Transition.leftToRight);
                },
                child: Container(
                  height: 77,
                  width: 80,
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
