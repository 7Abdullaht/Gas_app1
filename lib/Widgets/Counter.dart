import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../Controllers/CounterController.dart';

class Counter extends StatelessWidget {
  final _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff8f8f8),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 35,
      padding: EdgeInsets.only(top: 2),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                _counterController.decrement();
              },
              child: Text(
                "-",
                style: TextStyle(fontSize: 20),
              ),
              minWidth: 10,
            ),
            Text("${_counterController.count.value}"),
            MaterialButton(
              onPressed: () {
                _counterController.increment();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 20),
              ),
              minWidth: 10,
            ),
          ],
        ),
      ),
    );
  }
}