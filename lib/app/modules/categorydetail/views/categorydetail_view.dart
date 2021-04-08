import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rasanmart/app/modules/detail/views/detail_view.dart';

import '../controllers/categorydetail_controller.dart';

class CategorydetailView extends GetView<CategorydetailController> {
  final String categoryName;
  CategorydetailView(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int i) {
                    return Container(
                      height: 270,
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
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Camera',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Rs. 20000',
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(height: 3),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
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
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
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
                                      backgroundColor: Colors.red.shade800),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  )),
                              SizedBox(width: 10),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.red.shade800),
                                  onPressed: () {
                                    Get.to(DetailView());
                                  },
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ))
                            ],
                          )
                        ],
                      ),
                    );
                  }))),
    );
  }
}
