// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  // print("constractor") ;

 
 @override
  State<CurrencyConverterMaterialPage>createState() {
    print("create a state");
    return _currencyconvertermaterialpage();
  }
 

  
}
class _currencyconvertermaterialpage extends State<CurrencyConverterMaterialPage>{

 void convert(){
   setState(() {
               result = double.parse(textEditingController.text)*100;
             });

 }
 
 
  // void initState() {
  //   super.initState();
  //    print("rebuild");
    
  // }
  double result=0;
   final TextEditingController textEditingController = TextEditingController();
   @override
   Widget build(BuildContext context) {
  print("rebuilt");
     
    
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 28, 25, 25),
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 192, 205),
        elevation:0,
        title: const Text("Currecy Converter",
        style:TextStyle( color: Color.fromARGB(255, 248, 244, 244),) ),
        centerTitle: true,
       
      ),
      backgroundColor: const Color.fromARGB(255, 167, 192, 205),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
            // padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(10),
            // color: Colors.black,
           
            child: Text(
              'Birr ${result!=0? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 234, 234, 234),
              ),
            ),
            
           ), 
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 21, 20, 20)),
                decoration: InputDecoration(
                  hintText: "Please enter the amount?",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(153, 16, 15, 15),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
          ElevatedButton(
           
           
              onPressed: convert ,
              
            //  setState(() {
            //    result = double.parse(textEditingController.text)*100;
            //  });
              
          
            style: TextButton.styleFrom(
               backgroundColor: (Colors.black),
              foregroundColor: (Colors.white),
              minimumSize:
                 const Size(double.infinity,50 ),
                  shape: (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              )
                
              ),
             
              
            ),
            child:const  Text("Convert"),
            
             
            )
            
            
             
          ],
        ),
      ),
    );
  }
   }


