import 'package:flutter/material.dart';

import '../Static/ColorName.dart';
import '../model/data/products.dart';

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /** */
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: 140,
          width: 380,
          child: Card(
            elevation: 10,
            color: ColorName.lightwghit,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    Products[0].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(Products[0].description),
                  leading: Container(
                    height: 100,
                    width: 70,
                    color: Colors.white,
                    child: Image.asset(
                      'Assets/images/dd.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("60000ر.ي"),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
