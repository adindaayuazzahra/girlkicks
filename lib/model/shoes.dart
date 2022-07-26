import 'package:flutter/material.dart';

class Shoes {
  String id;
  String name;
  String price;
  String brand;
  String imgCover;
  String shortDesc;
  String description;
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
    required this.description,
    required this.size,
    required this.color,
    required this.imageGallery,
  });
}

var newarrivals = [
  Shoes(
    id: 'na01',
    name: 'Nike Dunk Low LL',
    price: '\$250',
    brand: 'By Nike',
    imgCover: 'assets/images/dunk1.png',
    shortDesc: 'Women\'s Shoes',
    description:
        "\"The dunk\" gets Dunked. Celebrating the 20th anniversary of Lisa Leslie's magical on-court moment, a hoops original brings the heat to honour the first woman to dunk in a pro game. Team colours and an embroidered 9 on the heel pay tribute to the championship-winning athleticism that propelled Lisa to be a 3x MVP. An Emerald Green Swoosh logo sends a bolt of energy up the side of the shoe, while colour-matched laces and stitching finish the look.",
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
    description:
        "Bold '90s-inspired style meets premium construction in your next ride-or-die kicks. Visible Air units draw the eye while delivering world-class cushioning, and ultra-plush padding on the ankle and tongue mean you'll want to wear them all day. Mix up your look with the customisable dual-lace system. You can wrap, tie or remove your laces altogether—adding your own spin on a classic.",
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
    description:
        "Rise to the occasion in style that soars. This shoe reworks an icon's original magic with a platform sole and low-cut silhouette. Air cushioning keeps you lifted and sleek leather in contrasting colours adds visual interest.",
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
    name: 'Nike React Infinity Run Flyknit 3 Premium',
    price: '\$350',
    brand: 'By Nike',
    imgCover: 'assets/images/React.png',
    shortDesc: 'Women\'s Road Running Shoes',
    description:
        "Stay on your feet, so that you can take on today's quick 2-miler and bounce back in time for a longer run tomorrow. A wider forefoot and higher foam stacks add super-soft cushioning, giving you the peace of mind to pound the pavement every day. The springy responsiveness adds an element of speed to our most tested shoe to help you go faster and farther.",
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
    description:
        "Don't adjust your screen. What you're seeing isn't a glitch in the system. Built to fit your foot and designed for comfort, this Nike Air Huarache SE packs a nostalgic punch with an all-over pixelated print and glow-in-the-dark details. The low-cut collar and bootie-like construction keep it sleek while an iconic heel clip and stripped-away branding add the '90s look you love.",
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
    description:
        "The Nike Air Force 1 Shadow puts a playful twist on a classic b-ball design.Using a layered approach, doubling the branding and exaggerating the midsole, it highlights AF-1 DNA with a bold, new look.",
    size: ['5', '5.5', '6', '6.5', '7'],
    color: [Colors.blueGrey, Colors.amber, Colors.black],
    imageGallery: [
      'assets/images/force.png',
      'assets/images/force1.png',
    ],
  ),
];
