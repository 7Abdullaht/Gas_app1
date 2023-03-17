  import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gas_app/RepatFunction/ScreenSizes.dart';


class TextFiledGas extends StatelessWidget {
    
final IconData iconTextFiled;
final String labelText;
final bool? obsText;
final TextEditingController filedControl;
final TextInputType? inputType;
final String? Function(String?) valid;

TextFiledGas({required this.iconTextFiled,required this.labelText,this.obsText,this.inputType,required this.valid,required this.filedControl});
  @override
  Widget build(BuildContext context) {
    return Container(
            width: perWidth(context,whidth: 100),
            padding: EdgeInsets.symmetric(vertical: perHigh(context, 3)),
            
            child: TextFormField(
              
              controller: filedControl,
              keyboardType: inputType,
              validator: valid,
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white),
                hintText: labelText,
                prefixIcon: Icon(iconTextFiled,color: Colors.white,),
                
                filled: true,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(perHigh(context,5)),borderSide: const BorderSide(style: BorderStyle.none)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(perHigh(context,5)),borderSide: const BorderSide(style: BorderStyle.none)),
                fillColor: Colors.deepOrange.shade300, 
                ),
                obscureText: obsText!,
                
                ),
          
      );
    }
  }