import 'dart:convert';

import 'package:flutter/src/material/card.dart';
/// كلاسات تبع مشرف
class mycard{
  final icon;
  final title;
  bool inactive=false;
  mycard(this.icon,this.title,this.inactive);
}
class Complaint {
  final String title;
  final String description;

  Complaint(this.title, this.description);
}
class detailsmangmeent {
 
 
 final int Quantiy;
 
 final String image;
 final int Total;
 final String NameProdect;
 final String servicetype;


detailsmangmeent(this.Quantiy,this.Total,this.NameProdect,this.servicetype,this.image,);
}

class Ordermanagment{
  final int Id;
  final String NameConsumer;
  final String NameSupplier;
  final String Orderdate;
  Ordermanagment(this.NameConsumer,this.NameSupplier,this.Id,this.Orderdate);
}
class dataconsumer{
  final int phone;
  final String name;
  final String Areas;
  final String Block;
  final String date;
  dataconsumer(this.name,this.phone,this.Block,this.Areas,this.date);

}
class Block {
  String name;
  String color;

  Block({required this.name, required this.color});
}
class Area {
  String name;
  List<Block> blocks;

  Area({required this.name, required this.blocks});
}
// كلاسات تبع المورد
class MyHome{
  final icon;
  final title;
 
  MyHome(this.icon,this.title,);
}
class Myorder{
  final int id;
  final String nameConsumer;
  final String namesupplier;
  final String date;
  final String nameservies;

  Myorder(this.id,this.nameConsumer,this.namesupplier,this.date,this.nameservies,);
}
class Product {
  int Id;
  String description;
  int quantity;
  double price;
  String image;

  Product({required this.Id, required this.description, required this.quantity, required this.price, required this.image});
}
class notification{
String title;
String description; 
String time;
String images;
notification(this.title,this.description,this.time,this.images);
}
