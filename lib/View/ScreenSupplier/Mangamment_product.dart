import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controllers/Supplier_controller.dart';
import '../../Static/TextNames.dart';
import '../../Widgets/Counter.dart';
import '../../model/iteam_list.dart';
import 'Addprodcut.dart';

class ManageProductsPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Manage Products'),
        backgroundColor: Color(0xff528fbc), 
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0xff528fbc),
        
        onPressed: (){
           Get.to(AddProductPage());
        },child: Icon(Icons.add,size: 30,),
        
        ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount:Addproduct.length,
                itemBuilder: (context, index) {
                  final product = Addproduct[index];
                  return Card(
                    elevation: 5,
                    color:Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),                    
                    child: Row(children: [
                  Container(child: Image.asset("assets/images/${Addproduct[index].image}"),),
                   Expanded(
                      flex: 2,  
                      child:ListTile(
                        title:Text("${Addproduct[index].image}"),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Row(children: [
                                  Text(TextNames.quantityname),
                                  Text("${Addproduct[index].quantity}"),
                                ],
                                ),
                                Row(children: [
                                  InkWell(
                                    child:Icon(Icons.edit),
                                  ),
                                ],
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: [
                                Row(children: [
                                   Text(TextNames.pricename),
                                   Text("${Addproduct[index].price}")
                                ],
                                ),
                                Row(children: [
                                  Counter(),
                                ],)
                              ],
                              ),
                            )
    
                          ],
                        ),

                      )
                      )
                    ],
                    ),
                    
                  );
                },
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: ElevatedButton(
          //     child: Text('Add Product'),
          //     onPressed: () {
          //      Get.to(AddProductPage());
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}