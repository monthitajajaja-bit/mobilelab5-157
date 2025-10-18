import 'package:flutter/material.dart';
import 'package:mobilelab5/main.dart';
import 'package:mobilelab5/models/foodmenu.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _component = '';
  int _price = 0;
  Type _foodType = Type.ttype1;
  Foodpic _foodpic = Foodpic.menu1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('เพิ่มข้อมูล'),
          backgroundColor: const Color.fromARGB(255, 149, 207, 255),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("ชื่ออาหาร", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกชื่ออาหาร';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? '';
                  },
                ),
                TextFormField(
                  maxLength: 100,
                  decoration: const InputDecoration(
                    label: Text("ส่วนประกอบสำคัญ",style: TextStyle(fontSize: 20),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกส่วนประกอบสำคัญ';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _component = value ?? '';
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("ราคา",style: TextStyle(fontSize: 20),),
                  ),
                  onSaved: (value) {
                    _price = int.parse(value.toString());
                  },
                ),
                DropdownButtonFormField(
                  value: _foodType,
                  decoration: const InputDecoration(
                    label: Text("ชนิดอาหาร",style: TextStyle(fontSize: 20),),
                  ),
                  items: Type.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.ty));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _foodType = value!;
                    });
                  },
                ),
                DropdownButtonFormField(
                  value: _foodpic,
                  decoration: const InputDecoration(
                    label: Text("เลือกรูปภาพ",style: TextStyle(fontSize: 20),),
                  ),
                  items: Foodpic.values.map((pic) {
                    return DropdownMenuItem(value: pic, child: Row(children: [ 
                      Text(pic.namefood),
                      const SizedBox(width: 10),
                      Image.asset(pic.image, width: 30, height: 30),
                    ]) );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _foodpic = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    emp.add(FoodMenu(
                      name: _name,
                      type: _foodType.ty,
                      component: _component,
                      price: _price,
                      foodpic: _foodpic,
                      background: _foodType.background, 
                    ));
                    _formKey.currentState!.reset();
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => const MyApp()));
                    //print(emp.length);
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 83, 86, 255),
                  ),
                  child: const Text(
                    "บันทึกข้อมูล",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}