import 'package:flutter/material.dart';
import 'package:neural_quotes/style/style.dart';
import 'package:neural_quotes/utility/utility.dart';

class Createscreen extends StatefulWidget {
  static const String name = "create-product";
  @override
  State<Createscreen> createState() => _CreatescreenState();
}

class _CreatescreenState extends State<Createscreen> {

  Map<String, dynamic> formValues = {"ProductName":"","img":"","ProductCode":"","Qty":"","TotalPrice":"","UnitePrice":"",};
  inputOnChange(key, val){
    setState(() {
      formValues.update(key, (value)=>val);
    });
  }

  onSubmit(){
    if(formValues['ProductName']!.length == 0){
      ErrorToast("Product name required!");
    }else if(formValues['img']!.length == 0){
      ErrorToast("Product image required!");
    }else if(formValues['ProductCode']!.length == 0){
      ErrorToast("Product ProductCode required!");
    }else if(formValues['Qty']!.length == 0){
      ErrorToast("Product Quantity required!");
    }else if(formValues['TotalPrice']!.length == 0){
      ErrorToast("Product TotalPrice required!");
    }else if(formValues['UnitePrice']!.length == 0){
      ErrorToast("Product UnitePrice required!");
    }else{

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create product"),),
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                children: [
                  TextFormField(onChanged: (value){inputOnChange("ProductName", value);},decoration: AppInputDecoration("Product name"),),
                  TextFormField(onChanged: (value){inputOnChange("ProducCode", value);},decoration: AppInputDecoration("Product code"),),
                  TextFormField(onChanged: (value){inputOnChange("img", value);},decoration: AppInputDecoration("Product image"),),
                  TextFormField(onChanged: (value){inputOnChange("UnitePrice", value);},decoration: AppInputDecoration("Product unite price"),),
                  AppDropdownStyle(
                    DropdownButton(
                      value: formValues['Qty'],
                        items: const [
                          DropdownMenuItem(value: "",child: Text("Select Quantity",),),
                          DropdownMenuItem(value: "1",child: Text("1",),),
                          DropdownMenuItem(value: "2",child: Text("2",),),
                          DropdownMenuItem(value: "3",child: Text("3",),),
                          DropdownMenuItem(value: "4",child: Text("4",),),
                        ],
                        underline: Container(),
                        isExpanded: true,
                        onChanged: (value){inputOnChange("Qty", value);}
                    ),
                  ),
                  TextFormField(onChanged: (value){inputOnChange("TotalPrice", value);},decoration: AppInputDecoration("Total price"),),
                  Container(child: ElevatedButton(
                      style: AppButtonStyle(),
                      onPressed: (){onSubmit();},
                      child: SuccessButtonChild("Submit")
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
