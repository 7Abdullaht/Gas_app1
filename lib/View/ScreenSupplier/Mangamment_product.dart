import 'package:flutter/material.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/View/ScreenSupplier/Edit_Product.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controllers/Supplier_controller.dart';
import '../../Static/TextNames.dart';
import '../../model/iteam_list.dart';
import 'Addprodcut.dart';
class ManageProductsPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Products'),
        backgroundColor: ColorName.colorblue, 
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor:ColorName.colorblue,
        
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
                    color:ColorName.colorblue,
                    
                    child: ListTile(
                      
                      leading: 
                      
                      Image.asset('assets/images/${product.image}',width: 70,),
                      
                      title: Row(
                        children: [
                          
                          Text(product.Id.toString(),style: TextStyle(fontSize: 15,color:Colors.white)),
                          Text(TextNames.prodcutnum,style: TextStyle(fontSize: 15,color:Colors.white)),
                        ],
                      ),
                      
                      subtitle:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                           children: [
                             Text(product.description,style: TextStyle(fontSize: 15,color:Colors.white)),
                             Text(TextNames.descriptionName,style: TextStyle(fontSize: 15,color:Colors.white)),
                           ],
                         ), 
                  
                        Row(
                          children: [
                            Text(product.quantity.toString(),style: TextStyle(fontSize: 15,color:Colors.white),),
                            Text(TextNames.quantityname,style: TextStyle(fontSize: 15,color:Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(product.price.toString(),style: TextStyle(fontSize: 15,color:Colors.white)),
                            Text(TextNames.pricename,style: TextStyle(fontSize: 15,color:Colors.white))
                          ],
                        )
                  
                  
                      ],), 
                      trailing: IconButton(
                        icon: Icon(Icons.edit,color: Colors.white,),
                        onPressed: () {
                          Get.to(EditProductPage(product: product, index: index));
                        },
                      ),
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