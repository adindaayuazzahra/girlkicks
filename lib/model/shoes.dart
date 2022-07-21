import 'package:flutter/material.dart';

class Shoes {
  String id;
  String name;
  String price;
  String brand;
  String imgCover;
  String shortDesc;
  List<Color> color;
  List<String> size;
  List<String> imageGallery;
  Shoes({
    required this.id,
    required this.name,
    required this.brand,
    required this.imgCover,
    required this.price,
    required this.shortDesc,
    required this.size,
    required this.color,
    required this.imageGallery,
  });

  // Shoes.fromJson(Map<String, dynamic> shoes) {
  //   id = shoes['id'];
  //   name = shoes['name'];
  //   price = shoes['price'];
  //   brand = shoes['brand'];
  //   imgCover = shoes['imgCover'];
  // }
}

// List<Shoes> parseShoes(json) {
//   if (json == null) {
//     return [];
//   }

//   final List parsed = jsonDecode(json);
//   return parsed.map((dynamic json) => Shoes.fromJson(json)).toList();
// }

var newarrivals = [
  Shoes(
    id: 'na01',
    name: 'Nike Dunk Low LL',
    price: '\$250',
    brand: 'By Nike',
    imgCover: 'assets/images/dunk1.png',
    shortDesc: 'Women\'s Shoes',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.purple.shade300, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/dunk1.png',
      'assets/images/dunk2.png',
    ],
  ),
  Shoes(
    id: 'na02',
    name: 'Nike Air Max Furyosa',
    price: '\$250',
    brand: 'By Nike',
    shortDesc: 'Women\'s Shoes',
    imgCover: 'assets/images/furyosa.png',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.tealAccent, Colors.amber, Colors.blueGrey],
    imageGallery: [
      'assets/images/furyosa.png',
      'assets/images/furyosa1.png',
    ],
  ),
  Shoes(
    id: 'na03',
    name: 'Air Jordan 1 Elevate',
    price: '\$250',
    brand: 'By Nike',
    imgCover: 'assets/images/elevate.png',
    shortDesc: 'Women\'s Shoes',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.blueGrey, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/elevate.png',
      'assets/images/elevate1.png',
    ],
  ),
];

var featureds = [
  Shoes(
    id: 'f01',
    name: 'Nike React Infinity Run Flyknit 3',
    price: '\$350',
    brand: 'By Nike',
    imgCover: 'assets/images/React.png',
    shortDesc: 'Women\'s Road Running Shoes',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.blueGrey, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/React.png',
      'assets/images/react1.png',
    ],
  ),
  Shoes(
    id: 'f02',
    name: 'Nike Air Huarache',
    price: '\$150',
    brand: 'By Nike',
    imgCover: 'assets/images/huarace.png',
    shortDesc: 'Women\'s Shoes',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.blueGrey, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/huarace.png',
      'assets/images/huarace1.png',
    ],
  ),
  Shoes(
    id: 'f03',
    name: 'Nike Air Force 1 Shadow',
    price: '\$250',
    brand: 'By Nike',
    imgCover: 'assets/images/force.png',
    shortDesc: 'Women\'s Shoes',
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.blueGrey, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/force.png',
      'assets/images/force1.png',
    ],
  ),
];
