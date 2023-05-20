import 'package:flutter/material.dart';
import '../../Static/ColorName.dart';
import '../../Widgets/TheList.dart';

class mymore extends StatelessWidget {
  const mymore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('القائمة '),
      backgroundColor:ColorName.colorblue,
      centerTitle: true,
      ),
      body: Listmore(),
    );
  }
}
