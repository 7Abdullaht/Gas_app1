import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gas_app/RepatFunction/ScreenSizes.dart';
import 'package:gas_app/Static/ColorName.dart';
import 'package:gas_app/model/data/notificationlist.dart';
import 'package:gas_app/model/data/products.dart';

import '../../Widgets/product_card.dart';
import 'notification_screen.dart';

class productssreen extends StatelessWidget {
  const productssreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('المنتجات')),
        body: SafeArea(
            child: Column(children: [
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CircleAvatar(),
            Text('Abdullah'),
            IconButton(
              icon: Icon(
                Icons.notifications_rounded,
                color: ColorName.lightorange,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifivation_cunsumer()),
                );
              },
            ),
          ]),
          SizedBox(height: 10),
          card(),
          card(),
          card(),
          card(),
        ])));
  }
}
