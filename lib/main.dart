import 'package:currency_conveter/currency_conveter_material_page.dart';
import 'package:flutter/material.dart';
// import'package:flutter/cupertino.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:CurrencyConverterMaterialPage(),
        
   
    )  ;
  

  }

}

