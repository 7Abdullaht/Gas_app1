import 'package:flutter/material.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/model/iteam.dart';
import 'package:get/get.dart';
import '../../Controllers/Supplier_controller.dart';
import '../../Static/TextNames.dart';
import '../../Widgets/TextFiled1.dart';

class AddProductPage extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();
  final IdController = TextEditingController();
  final descriptionController = TextEditingController();
  final quantityController = TextEditingController();
  final priceController = TextEditingController();
  final imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
         backgroundColor:ColorName.colorblue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Textfiled(
            filedControl: IdController,
            obsText: true,
            inputType: TextInputType.streetAddress,
            labelText:TextNames.prodcutnum,
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
                labelText: TextNames.quantityname,
                inputType: TextInputType.number,
                valid: ((p0) {
                  
                }),
              ),
             
            
            Textfiled(
              filedControl: priceController,
              obsText: true,
              inputType: TextInputType.number,
              labelText: TextNames.pricename,
              valid: (p0) {
                
              },
            
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
              child: Text('Save'),
              onPressed: () {
                final product = Product(
                  Id:int.parse( IdController.text),
                  description: descriptionController.text,
                  quantity: int.parse(quantityController.text),
                  price: double.parse(priceController.text),
                  image: imageController.text,);
                  productController.addProduct(product);
                  Get.back();
                  },
                  ),
                  ],
                  ),
                  ),
            );
          }
        }          