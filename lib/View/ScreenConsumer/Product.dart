import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../Static/ColorName.dart';
import '../../Static/TextNames.dart';
import '../../model/iteam_list.dart';

class Products extends StatelessWidget {
  const Products({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("منتجات"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.notifications_active))
      ],
      backgroundColor: ColorName.colorblue, 
    ),
    body: SafeArea(child:GridView.builder(
      itemCount: products.length,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              mainAxisExtent: 270,
            ) , itemBuilder:(context,index){
      return Card(
        elevation: 15,
        child: Column(children: [
          Container(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset("images/${products[index].image}",width:100,fit: BoxFit.fill,height: 100,)),
          SizedBox(
            child: Text("${products[index].description}",style: TextStyle(fontSize:15),)),
            Text("${products[index].price}",style: TextStyle(fontSize: 15),),
            Container(
                color: Color(0xfff8f8f8),
                        width: 150,
                        height: 35,
                        //margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.only(top: 2),
            child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  MaterialButton(onPressed: () {
                  },
                  child: Text("-",style: TextStyle(fontSize: 20),
                  ),
                  minWidth: 10,
                  ),
                  Text("0"),
                   MaterialButton(onPressed: () {},
                  child: Text("+",style: TextStyle(fontSize: 20),
                  ),
                  minWidth: 10,
                  ),
                ],
              ) ,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: MaterialButton(
              padding: EdgeInsets.symmetric(horizontal:30,),
              color: ColorName.colorblue, 
              onPressed: (){},child:Text(TextNames.labelnameBasket,style: TextStyle(fontSize: 18,color: Colors.white),),),
          )
        ],
        ),
      );
    }
    )
    ),
    );
  }
}
 