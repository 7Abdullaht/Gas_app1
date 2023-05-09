import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../../Static/ColorName.dart';
import '../../Static/TextNames.dart';
import '../../model/iteam_list.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold (
        appBar: AppBar(
        title: Text("طلباتي"),
        centerTitle: true,
        backgroundColor: ColorName.colorblue, 
        ),
        body: SafeArea(
          child: Stack(
            children:[ 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    
                  onPressed:(){}, child:Text("طلبات القيد الانتظار"),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      primary: ColorName.colorblue, )
                  
                  ),
                  ElevatedButton(onPressed:(){}, child:Text("طلبات منتهية",style: TextStyle(color: Color(0xff528fbc)),),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      primary: Colors.white)
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Expanded(
                  child: ListView.builder(
                  itemCount: MyOorderlistr.length,
                  itemBuilder:(context,i){
                  return  
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side:BorderSide(width: 2) ),
                        elevation: 10,
                        child:Row(children: [
                          Expanded(child:Container(
                         height:100,
                  
                        decoration: BoxDecoration(  border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      ),
                       child: Image.asset("images/${MyOorderlistr[i].images}",width: 0,height:0,)),
                        ),
                        Expanded(
                        flex: 3,
                        child:ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${MyOorderlistr[i].dateorder}"),
                            Text("${MyOorderlistr[i].productsName}"),
                          ],
                        ),
                        subtitle: Column(
                          children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text(TextNames.typeservise),
                          ]
                          ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                            Row(children: [
                              Text("${MyOorderlistr[i].quantity}"),
                              Text(TextNames.quantityname),
                            ],
                            ),
                            Row(children: [
                              Text("${MyOorderlistr[i].totalPrice}"),
                              Text(TextNames.pricename),
                            ],
                            )
                          ],
                          ),

                        ],
                        ),
                        ),
                         ),
                        ],
                        )
                        );
                          }
                          ),
                ),
              )
            ]
          ),
        ) ,
      ),
    );
  }
}
