import 'package:flutter/material.dart';
import 'package:gas_app/Controllers/ControllerLogin.dart';
import 'package:gas_app/RepatFunction/ScreenSizes.dart';
import 'package:gas_app/Static/TextNames.dart';
import 'package:get/get.dart';

import '../../RepatFunction/ValidFun.dart';
import '../../Widgets/Button.dart';
import '../../Widgets/textFiled.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final ControllerLogin controllerLogin = Get.put(ControllerLogin());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: true,
        bottom: true,
        right: true,
        left: true,
        child: Stack(
          children: [
            Container(
              child: Text(
                'مرحبا بك ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              width: 400,
              height: 230,
              color: Colors.orange,
            ),
            SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 130),
              child: Card(
                elevation: 5,
                shadowColor: Color.fromARGB(255, 251, 194, 108),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      horizontal: perWidth(context, whidth: 7),
                      vertical: perHigh(context, 30)),
                  child: (Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: prefer_const_literals_to_create_immutables
                      Form(
                        key: globalKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFiledGas(
                              labelText: TextNames.labelPhoneAr,
                              iconTextFiled: Icons.phone,
                              obsText: false,
                              inputType: TextInputType.number,
                              valid: (val) {
                                return phoneOrNameFiled(val!,
                                    isPhone: true, min: 3, max: 20);
                              },
                              filedControl: phone,
                            ),
                            SizedBox(height: 5),
                            TextFiledGas(
                              labelText: TextNames.labelPasswordAr,
                              iconTextFiled: Icons.lock,
                              obsText: true,
                              valid: (val) {
                                return phoneOrNameFiled(val!, min: 3, max: 20);
                              },
                              filedControl: password,
                            ),
                            SizedBox(height: 8),
                            ButtonSign(
                              text: TextNames.labelButtonLoginAr,
                              onTap: () {
                                if (globalKey.currentState!.validate()) {
                                  // if true go to HomePage Supplier
                                  // if false go to HomePage Coustmer
                                }
                              },
                            ),
                            GetX<ControllerLogin>(
                              builder: (controller) {
                                return CheckboxListTile(
                                    title: const Text(
                                      TextNames.labelRadioLoginAr,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: controllerLogin.isSelectRadio.value,
                                    onChanged: ((value) {
                                      controllerLogin.isSelectRadio.value =
                                          value!;
                                    }));
                                // ignore: unrelated_type_equality_checks
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
