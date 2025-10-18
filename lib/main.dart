import 'package:flutter/material.dart';
import 'package:mobilelab5/screen/item.dart';
 
 
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:177"),
          backgroundColor: const Color.fromARGB(255, 253, 241, 187),
          centerTitle: true,
        ),
        //body: const Home(),
        body: const Item(),
      ),
    );
  }
}