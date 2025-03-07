import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget{
   const CurrencyConverterCupertinoPage({super.key});
  // print("constractor") ;

 
 @override
  State<CurrencyConverterCupertinoPage>createState() {
    print("create a state");
    return _CurrencyConverterCupertinoPage();
  }
 

  
}
class _CurrencyConverterCupertinoPage extends State<CurrencyConverterCupertinoPage>{

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
     
    
   (
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 28, 25, 25),
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return CupertinoPageScaffold(
       backgroundColor: const Color.fromARGB(255, 167, 192, 205),
      navigationBar: CupertinoNavigationBar(
      
        middle: Text("Currecy Converter",
        style:TextStyle( color: Color.fromARGB(255, 248, 244, 244),) ),
        
       
      ),child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
           
           
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

              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 22, 21, 21)),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color:  const Color.fromARGB(255, 221, 216, 216),   ),
                  placeholder:("plaese enter the amount?"),
                  placeholderStyle: TextStyle(color:Color.fromARGB(255, 73, 72, 72)),

                  prefix: const Icon(CupertinoIcons.money_dollar),
                     keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
                 
                ),
              const SizedBox(height: 10,),

          CupertinoButton(
            
            onPressed: convert ,
            color:const Color.fromARGB(255, 33, 54, 214),
            child:const  Text("Convert", style: const TextStyle(color: Color.fromARGB(255, 236, 229, 229),),
            
            ),
            
             
            )
            
            
             
          ],
        ),
      ),
    );
  }

}