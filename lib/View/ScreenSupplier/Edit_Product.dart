import 'package:flutter/material.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/Static/TextNames.dart';
import 'package:get/get.dart';


import '../../Controllers/Supplier_controller.dart';

import '../../Widgets/Counter.dart';
import '../../Widgets/TextFiled1.dart';
import '../../Widgets/textFiled.dart';
import '../../model/iteam.dart';



class EditProductPage extends StatelessWidget {
final ProductController productController = Get.find<ProductController>();

final Products product;
final int index;


final descriptionController = TextEditingController();
final quantityController = TextEditingController();
final priceController = TextEditingController();
final imageController = TextEditingController();

EditProductPage({required this.product, required this.index}) {

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
 backgroundColor: Color(0xff528fbc),
),
     body: Padding(
     padding: const EdgeInsets.all(16.0),
     child: Column(
     children: [
       Expanded(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                ),
                child: InkWell(
                  child: Icon(Icons.camera_alt),
                  onTap: () {},
                ),
              ),
            ),  
           
            TextFiledGas(
              filedControl: descriptionController,
              obsText: false,
              inputType: TextInputType.streetAddress,
              labelText: TextNames.descriptionName,
              iconTextFiled: Icons.delete,
              valid: ((p0) {
                
              }),
            ),
           Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
             child: Counter(
             ),
           ),
            TextFiledGas(
              filedControl: priceController,
              obsText: false,
              inputType: TextInputType.number,
              labelText: TextNames.pricename,
              iconTextFiled: Icons.delete,
              valid: (p0) {
                
              },
            
            ),
ElevatedButton(
child: Text('تعديل'),
onPressed: () {
final updatedProduct = Products(

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