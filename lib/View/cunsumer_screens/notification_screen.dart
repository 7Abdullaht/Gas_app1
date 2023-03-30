import 'package:flutter/material.dart';
import 'package:gas_app/View/cunsumer_screens/products_screen.dart';
import 'package:gas_app/model/data/notificationlist.dart';

class Notifivation_cunsumer extends StatelessWidget {
  const Notifivation_cunsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 225, 199),
        appBar: AppBar(title: Text('الاشعارات')),
        body: SafeArea(
          child: ListView(
            children: const [
              notication_card(),
              SizedBox(height: 8),
              notication_card(),
              SizedBox(height: 8),
              notication_card(),
            ],
          ),
        ));
  }
}

class notication_card extends StatelessWidget {
  const notication_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
        height: 140,
        width: 250,
        child: Card(
            elevation: 10,
            color: Colors.white,
            child: Column(
              children: [
                Text(notifications[0].title),
                Text(notifications[0].description),
                SizedBox(height: 10),
              ],
            )));
  }
}
