  import 'package:flutter/material.dart';
import 'package:get/get.dart';




import 'data_consumer.dart';
import 'view_data_consumer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ادارة العملاء'),
          bottom: 
          TabBar(            
            tabs: [
              Tab(
                
                text: 'عرض بيانات العملاء ',
              ),
              Tab(
                text: 'عرض العملاء قيد الانتطار',
              ),
              
            ],
          ),
        ),
        body: TabBarView(
          children: [
            data_consumer(),
            Myscreen(),
          ],
        ),
      ),
    );
  }
}