import 'package:flutter/material.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/Widgets/textFiled.dart';
import 'package:gas_app/model/iteam.dart';
import 'package:get/get.dart';
import '../../Controllers/Supplier_controller.dart';
import '../../Static/TextNames.dart';
import '../../Widgets/Counter.dart';
import '../../Widgets/TextFiled1.dart';

class AddProductPage extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("اضافة منتج"),
      backgroundColor: ColorName.colorblue,
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              SizedBox(height: 16.0),
              TextFiledGas(
              filedControl: descriptionController,
              obsText:false,

              inputType: TextInputType.streetAddress,
              labelText: TextNames.descriptionName,
              iconTextFiled: Icons.delete,
              valid: ((p0) { 
              }),
            ),
              SizedBox(height: 16.0),
              Counter(
        
              ),
             const SizedBox(height: 16.0),
             TextFiledGas(
              filedControl: descriptionController,
              obsText: false,
              inputType: TextInputType.streetAddress,
              labelText: TextNames.descriptionName,
              iconTextFiled: Icons.delete,
              valid: ((p0) {
                
              }),
            ),
              SizedBox(height: 16.0),
              MaterialButton(
                color: ColorName.colorblue,
                child: const Text('اشافة '),
                onPressed: () {
                  final product = Products(
                    description: descriptionController.text,
                    quantity: int.parse(quantityController.text),
                    price: double.parse(priceController.text),
                    image: imageController.text,
                  );
                  productController.addProduct(product);
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 