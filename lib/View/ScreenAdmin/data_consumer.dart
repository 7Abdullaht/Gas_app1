
import 'package:flutter/material.dart';

class data_consumer extends StatelessWidget {
   List myscreen=[{
    "الاسم":"امين",
    "التاريخ":"2023/2/2",
    "رقم جوال":"735567645",
    "الحي":"المتضررين",
    "المنطقة":"فوة",
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: ListView.builder(itemCount:myscreen.length,itemBuilder: (context,i) {
            return Container(
           height: 400,
          width:double.infinity,
          padding: EdgeInsets.only(top: 25),
          margin: EdgeInsets.only(right: 10,left: 10),
              child: Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 10,
                child: Column(    
                  children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Icon(Icons.person,size: 100, color: Color(0xff0F4C81),),
                    ),
                    Text("${myscreen[i]["الاسم"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                        Icon(Icons.date_range,color: Color(0xff0F4C81),), Text("التاريخ: ${myscreen[i]["التاريخ"]}",style: TextStyle(fontWeight: FontWeight.bold)),

                      ],),
                      Row(children: [
                        Icon(Icons.phone,color: Color(0xff0F4C81)),Text("الجوال: ${myscreen[i]["رقم جوال"]}",style: TextStyle(fontWeight: FontWeight.bold))
                      ],)
                  ],
                  ),
                  InkWell(child:Icon(Icons.arrow_drop_up,size:30,),
                  splashColor: Color(0xff0F4C81),
                    onTap: (){},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                         Icon(Icons.location_on,color: Color(0xff0F4C81),),
                          Text(" الحي: ${myscreen[i][ "الحي"]}",style: TextStyle(fontWeight: FontWeight.bold),),

                      ],),
                      Row(children: [
                         Icon(Icons.location_on,color: Color(0xff0F4C81),),
                           Text(" المنطقة: ${myscreen[i][ "المنطقة"]}",style: TextStyle(fontWeight: FontWeight.bold))
                      ],)
                  ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color(0xfffD4CDCA),
                  ),
                  
                 
                    
                 Padding(
                   padding: const EdgeInsets.only(top:5),
                   child:Icon(Icons.delete,color: Color(0xffA60036),size: 30,) 
                 ),
                ],
                ),
         
          ),
            );
            
          },)
    );
  }
}
