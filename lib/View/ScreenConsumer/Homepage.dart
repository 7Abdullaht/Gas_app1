import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gas_app/Widgets/Counter.dart';
import 'package:get/get.dart';
import '../../Static/ColorName.dart';
import '../../Static/TextNames.dart';
import '../../Widgets/notification.dart';
import '../../model/iteam_list.dart';
import 'Product.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("الرئسية"),
      centerTitle: true,
      actions: [
       Badge(
  position: BadgePosition.topEnd(top: 0, end: 3),
  animationType: BadgeAnimationType.slide,
  badgeContent: Text('3', style: TextStyle(color: Colors.white)),
  child: IconButton(icon: Icon(Icons.notifications), onPressed: () {
    Get.to(notifications());
  }
  ),
)
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 15,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                "  امين العيدروس ",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
            ),
              ),
             Transform.scale(
                  scale:1,
                  child: InkWell(child: CircleAvatar(backgroundImage:AssetImage("images/m.png",),),
                  onTap: (){
                  },
                  ),
                ),
            ]
          ),
        ),
      ),
      backgroundColor: ColorName.colorblue, 
    ),
    body: SafeArea(child:Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           InkWell(
             child: Row(children: [
                 Icon(Icons.arrow_left,size:25,color: ColorName.colorblue,),
                 Text("عرض الكل ",style: TextStyle(color:ColorName.colorblue),)
              ],
              ),
              onTap: (){
              
              },
           ),
          Padding(
            padding: const EdgeInsets.only(right:5),
            child: Row(
              children: [
              Text(TextNames.NameThemostimportantproducts,style: TextStyle(fontSize: 17),)
              ],
            ),
          )
        ],
        ),
        Expanded(
          child: GridView.builder(
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
                 Counter(),
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
          ),
        ),
      ],
    )
    ),

    );
  }
}
 
 