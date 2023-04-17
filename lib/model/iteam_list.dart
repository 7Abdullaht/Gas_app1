import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'iteam.dart';

// هذا عناصر خاصة صفحة مشرف
List<mycard>mycard1=[
  mycard(Icons.manage_accounts_outlined,"ادارة العملاء ",true,),
  mycard(Icons.manage_accounts_outlined,"ادارة المناطق",false), 
  mycard(Icons.shopping_basket,"ادارة طلبات",false),
  mycard(Icons.mode_comment_sharp,"شكاوي",false),
];

List<detailsmangmeent>details=[
detailsmangmeent( 3,43000,"استبدال  غاز ","خدمة حجزا","image/13.png"),
detailsmangmeent(3,30000,"استبدال  غاز ","خدمة حجز","image/12.png"),
detailsmangmeent(3,430990,"استبدال  غاز ","خدمة توصيل","image/12.png"),
];
List<Ordermanagment>Order=[
  Ordermanagment("امين","عبدالله بن ملكاش",1,"2023/2/2"),
  Ordermanagment("عامر", "عبدربه",2,"2022/2/4"),
  Ordermanagment("عادل","عبدالله",3,"2023/2/5"),

];
List<dataconsumer> consumer=[
  dataconsumer("امين",735567645," المتضررين", "فوة", "2022/2/2"),
   dataconsumer("احمد",735567645," المتضررين", "فوة", "2022/6/2"),
  dataconsumer("عامر",735567645," الغار الاحمر", "الديس", "2022/3/2"),
];

//// هذا عناصر خاصة بصفحة المورد
List<MyHome>myhome=[
  MyHome(Icons.shopping_cart, "صفحة الطلبات ",),
  MyHome(Icons.add_shopping_cart, "اضافة منتج")
];
List<Myorder>order=[
Myorder(1,"امين", "عامر", "2020/20/3", "حجز"),
Myorder(1,"عبدالله", "امين", "2020/20/3", "حجز"),
Myorder(1,"عبدربه", "عادل", "2020/20/5", "حجز"),

];

final Addproduct=<Product>[
].obs;


List<notification> listnotification=[
  notification("منتجات", "تم اضافة منتجات جديدة","7:30 AM","Logo.png"), 
  notification("اضافك في تطبيق", "تم قبول طلبك ","8:00 AM",'Logo.png'),

];

