import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Static/ColorName.dart';
import '../Static/TextNames.dart';
import '../model/iteam_list.dart';
class myBasket extends StatelessWidget {
  const myBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView.builder(
      itemCount: Basketlist.length,
      itemBuilder:((context, index) {
      return Card(
         shape: RoundedRectangleBorder(side: BorderSide(width: 3,color: Color(0xfff1cc97)),borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Row(children: [

        Container(
          width: 220,
          height: 150,
          padding: EdgeInsets.only(top:5,left: 0),
         color: Color(0xfff8f8f8),
          child: Column(children: [
            Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: IconButton(onPressed: (){}, icon:Icon(Icons.close,size:22,color: Colors.white, ))),
            ),
          ],
        ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             Row(
              children: [
                Text("${Basketlist[index].quantity}") 
              ],
             ),
             Row(children: [
              Text(TextNames.quantityname),
             ],
             ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             
             Row(children: [
              Text("نوع الخدمة "),
             ],
             ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             Row(
              children: [
                Text("${Basketlist[index].Total}")
              ],
             ),
             Row(children: [
              Text(TextNames.pricename),
             ],
             ),
              ],
            ),       
          ],
          ),
          ),
          Expanded(child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Text("${Basketlist[index].NameProdect}",style: TextStyle(fontSize: 17,color: ColorName.colorblue, ),),
                     ),
                    ],
                    ),
                    Row(children: [ 
                    Image.asset("images/${Basketlist[index].images}",width: 60,),
                    ],
                  ),
                ],
                ),
              ],
            ),
          )
          )
      ],
      ),
    );
    }
    )
    )
    );
  }
}