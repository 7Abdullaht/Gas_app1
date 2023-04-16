import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gas_app/Static/TextNames.dart';

import '../../RepatFunction/ValidFun.dart';
import '../../Widgets/Button.dart';
import '../../Widgets/textFiled.dart';

class register_suoolier extends StatelessWidget {
  
   final GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
   final TextEditingController name = TextEditingController();
     final TextEditingController passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  

      body:Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
             key: globalKey,
            child: Column(
            children: [
              Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              height: 100,
              width: 100,
              color: Color(0xffE9E9E9),
              child:InkWell(
                child: Icon(Icons.camera_alt),
                onTap: () {
                },
              )
              ),
          ),
          TextFiledGas(iconTextFiled:Icons.person , labelText: TextNames.labelname,  filedControl: name,obsText: false,
          valid: (val) {
  
          },
          ),
          TextFiledGas(
            labelText:TextNames.labelPhoneAr,iconTextFiled: Icons.phone,obsText: false,inputType: TextInputType.number,
            valid: (val) {
           return phoneOrNameFiled(val!,isPhone:true,min: 3,max: 20);
            },
            filedControl: phone,
        
            ),
            TextFiledGas(labelText: TextNames.labelPasswordAr,iconTextFiled: Icons.lock,obsText: true,
                                valid: (val) {
                                return phoneOrNameFiled(val!,min: 3,max: 20);
                                },
                                filedControl: password,
              ),
              TextFiledGas(labelText: TextNames.labelpasswordCon,iconTextFiled: Icons.lock,obsText: true,
                                valid: (val) {
                                return phoneOrNameFiled(val!,min: 3,max: 20);
                                },
                                filedControl: passwordCon,
              ),
              ButtonSign(text: TextNames.labelButtonLoginAr,onTap: () {
                                
                                if(globalKey.currentState!.validate()){
                                  // if true go to HomePage Supplier
                                  // if false go to HomePage Coustmer
                                }
                                      
                                },
                                ),
            ],


          )
          )
          
         
        ],
      ),

    );
  }
}