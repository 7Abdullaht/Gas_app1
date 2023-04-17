import 'package:flutter/material.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/Static/TextNames.dart';
import 'package:get/get.dart';


import '../../Controllers/Supplier_controller.dart';

import '../../Widgets/TextFiled1.dart';
import '../../model/iteam.dart';


class EditProductPage extends StatelessWidget {
final ProductController productController = Get.find<ProductController>();

final Product product;
final int index;

final idController = TextEditingController();
final descriptionController = TextEditingController();
final quantityController = TextEditingController();
final priceController = TextEditingController();
final imageController = TextEditingController();

EditProductPage({required this.product, required this.index}) {
idController.text = product.Id.toString();
descriptionController.text = product.description;
quantityController.text = product.quantity.toString();
priceController.text = product.price.toString();
imageController.text = product.image;
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Edit Product'),
 backgroundColor:ColorName.colorblue,
),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
Textfiled(
filedControl: idController,
obsText: true,
inputType: TextInputType.streetAddress,
labelText: TextNames.prodcutnum,
valid: ((p0) {
  
}),

),
Textfiled(
filedControl: descriptionController,
obsText: true,
inputType: TextInputType.streetAddress,
labelText: TextNames.descriptionName,
valid: ((p0) {
  
}),

),
Textfiled(
filedControl: quantityController,
obsText: true,
inputType: TextInputType.number,
labelText: TextNames.quantityname,
valid: (val){},

),
Textfiled(
filedControl: priceController,
obsText: true,
inputType: TextInputType.number,
labelText: TextNames.pricename,
valid: (val){},

),
Textfiled(
filedControl: imageController,
obsText: true,
inputType: TextInputType.streetAddress,

labelText: 'Image',
valid: ((p0) {
  
}),
),
ElevatedButton(
child: Text('تعديل'),
onPressed: () {
final updatedProduct = Product(
Id: int.parse(idController.text),
description: descriptionController.text,
quantity: int.parse(quantityController.text),
price: double.parse(priceController.text),
image: imageController.text,
);
productController.editProduct(index, updatedProduct);
Get.back();
},
),
],
),
),
);
}
}