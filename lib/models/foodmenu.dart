import 'package:flutter/material.dart';

enum Foodpic {
  menu1(namefood: "สุกี้", image: "assets/images/1.png"), 
  menu2(namefood: "สลัดรวม", image: "assets/images/2.png"), 
  menu3(namefood: "สเต็กหมู", image: "assets/images/3.png"), 
  menu4(namefood: "สเต็กเนื้อ", image: "assets/images/4.png"), 
  menu5(namefood: "แฮมเบอรเกอร์", image: "assets/images/5.png"), 
  menu6(namefood: "พิซซ่า", image: "assets/images/6.png"), 
  menu7(namefood: "ก๋วยเตี๋ยว", image: "assets/images/7.png");

  const Foodpic({required this.image, required this.namefood});
  final String image;
  final String namefood;
  }

enum Type {
  ttype1(ty: "ต้ม", background: Color.fromARGB(255, 255, 222, 179)),
  ttype2(ty: "สุขภาพ", background: Color.fromARGB(255, 179, 255, 185)),
  ttype3(ty: "ฟาสต์ฟู้ด", background: Color.fromARGB(255, 255, 194, 179)),
  ttype4(ty: "ผัด", background: Color.fromARGB(255, 240, 179, 255)),;

  const Type({required this.ty, required this.background});
  final String ty;
  final Color background;
}

class FoodMenu {
  FoodMenu(
      {required this.name,
      required this.type,
      required this.component,
      required this.price,
      required this.foodpic,
      required this.background,
      });
  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
  Color background;
}

List<FoodMenu> emp = [
    FoodMenu(
      name: "สุกี้ผักรวม",
      type: "ต้ม",
      component: "ไข่ไก่,เกี๊ยวกุ้ง,ปูอัด,เบคอน,ผักสด",
      price: 299,
      foodpic: Foodpic.menu1,
      background: const Color.fromARGB(255, 255, 179, 186)),
    FoodMenu(
      name: "สลัดผัก",
      type: "สุขภาพ",
      component: "แครอท,มะเขือเทศ,ผักรวม",
      price: 159,
      foodpic: Foodpic.menu2,
      background: const Color.fromARGB(255, 246, 179, 255)),
    FoodMenu(
      name: "สเต็กหมู",
      type: "ฟาสต์ฟู้ด",
      component:"หมู,ผัก,ไข่" ,
      price: 299,
      foodpic: Foodpic.menu3,
      background: const Color.fromARGB(255, 206, 179, 255)),
    FoodMenu(
      name: "สเต็กเนื้อ",
      type: "ฟาสต์ฟู้ด",
      component:"วัว,ผัก,ไข่",
      price: 389,
      foodpic: Foodpic.menu4,
      background: const Color.fromARGB(255, 179, 240, 255)),
    FoodMenu(
      name: "แฮมเบอร์เกอร์",
      type: "ฟาสต์ฟู้ด",
      component:"หมู,ผัก,ไข่,ขนมปัง" ,
      price: 189,
      foodpic: Foodpic.menu5,
      background: const Color.fromARGB(255, 179, 255, 213)),
     FoodMenu(
      name: "พิซซ่า",
      type: "ฟาสต์ฟู้ด",
      component:"แป้ง,ผัก,เบคอน" ,
      price: 299,
      foodpic: Foodpic.menu6,
      background: const Color.fromARGB(255, 228, 255, 179)),
     FoodMenu(
      name: "ก๋วยเตี๊ยว",
      type: "ต้ม",
      component:"เส้น,ผัก,ไข่" ,
      price: 88,
      foodpic: Foodpic.menu7,
      background: const Color.fromARGB(255, 255, 231, 179)),
 
 
];
 