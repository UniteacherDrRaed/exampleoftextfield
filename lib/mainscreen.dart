
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
TextEditingController number1Controller=TextEditingController();
TextEditingController number2Controller=TextEditingController();
int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("example of Textfield",style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: number1Controller,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "Enter first number",
                hintStyle:const TextStyle(color:Colors.red),
                filled: true,
                fillColor: Colors.lime.shade100,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2.0),
                  borderRadius:  BorderRadius.all(Radius.circular(10.0)
                ),
              ),
                enabledBorder:  const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green,
                    width: 2.0),
                borderRadius:  BorderRadius.all(Radius.circular(10.0)
                ),
              ),
            ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "Enter Second number",
                hintStyle:const TextStyle(color:Colors.red),
                filled: true,
                fillColor: Colors.lime.shade100,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2.0),
                  borderRadius:  BorderRadius.all(Radius.circular(10.0)
                  ),
                ),
                enabledBorder:  const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,
                      width: 2.0),
                  borderRadius:  BorderRadius.all(Radius.circular(10.0)
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                result=int.parse(number1Controller.text)+int.parse(number2Controller.text);
              });
            },
                child:const Icon(Icons.add)),
            const SizedBox(height: 10,),
            Text("$result"),
          ],
        ),
      ),
    );
  }
}
