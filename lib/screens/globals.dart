
import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:synergy/screens/product.dart';

const Color primaryColor = Color.fromARGB(255, 207, 196,177);
const Color accentColor = Colors.black;


const double paragraphFontSize = 18;


buttonWidget(String id, dynamic func, Color background, {required TextStyle style}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: background),
      onPressed: (){
        Navigator.pushReplacement(
                      context as BuildContext,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const ProductListScreen(productName: '', description: '', imageUrl: '', businessname: '', price: '', title: '',),
                      ),
                    );
      },
      child: Text(
        id,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ));
}

// list of items
List items = [
  {
    "productName": "T-shirts Women",
    "image":
        "assets/images/blackwomanshirt.jpg",
    "description":
        "100% cotton shirts",
    "businessname":
        "TRUE",
    "price":
        "500.00",
  },
  {
    "productName": "T-shirts Unisex",
    "image":
         "assets/images/blackshirt.jpg",
    "description":
        "Made with expandible material",
    "businessname":
        "Vivo",
    "price":
        "500.00",
  },
  {
    "productName": "Round Neck Shirts",
    "image":
         "assets/images/blackshirt2.jpg",
    "description":
        "Material is locally sourced!",
    "businessname":
        "ZARA",
      "price":
        "500.00",
  },
];
