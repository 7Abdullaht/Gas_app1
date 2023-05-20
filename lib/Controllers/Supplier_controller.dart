import 'package:get/get.dart';
import '../model/iteam.dart';
import '../model/iteam_list.dart';


class ProductController extends GetxController {
  

  void addProduct(Products product) {
    Addproduct.add(product);
  }

  void editProduct(int index, Products product) {
    Addproduct[index] = product;
  }

  void deleteProduct(int index) {
    Addproduct.removeAt(index);
  }
}