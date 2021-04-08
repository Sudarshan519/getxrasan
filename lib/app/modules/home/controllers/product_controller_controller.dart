import 'package:get/get.dart';
import 'package:rasanmart/app/data/models/product.dart';
import 'package:rasanmart/app/data/services/firebaseProductService.dart';

class ProductControllerController extends GetxController {
  var products = List<Product>.empty(growable: true).obs;
  var isloading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    fetchProducts();
  }

  @override
  void onClose() {}
  cagegoryItems(String category) {
    List<Product> prod = [];
    products.forEach((element) {
      products.forEach((element) {
        if (element.category.toLowerCase().contains(category.toLowerCase())) {
          print(element.productName);
        }
      });
    });
    return prod;
  }

  searchItems(String query) {
    List<Product> prod = [];
    products.forEach((element) {
      if (element.totalFavourite > 100) {
        prod.add(element);
      }
    });
    print(prod.toString());
    return prod;
  }

  topItems() {
    List<Product> prod = [];
    products.forEach((element) {
      if (element.totalFavourite > 100) {
        prod.add(element);
      }
    });
    //  print(prod.toString());
    return prod;
  }

  void fetchProducts() async {
    isloading.toggle();
    List<Product> productlist = await ProductFromFirebase().fetchProduct();
    products = productlist.obs;
    isloading.toggle();
  }
}
