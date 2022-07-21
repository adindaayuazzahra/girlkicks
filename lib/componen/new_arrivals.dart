import 'package:flutter/material.dart';
import 'package:girlkicks/model/shoes.dart';
import 'package:girlkicks/screen/detailpage.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrivalsItems extends StatelessWidget {
  const NewArrivalsItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final Shoes shoesArrivals = newarrivals[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(shoesArrivals: shoesArrivals);
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 25,
                bottom: 20,
              ),
              height: 140,
              width: 185,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 15, right: 15),
                      alignment: Alignment.center,
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(2, 5),
                            blurRadius: 7,
                            color: Colors.black12.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            (shoesArrivals.name),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            (shoesArrivals.price),
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    left: 5,
                    top: 0,
                    child: SizedBox(
                      height: 65,
                      child: Hero(
                        tag: shoesArrivals.id,
                        child: Image(
                          image: AssetImage(shoesArrivals.imgCover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: newarrivals.length,
      ),
    );
  }
}
// class NewArrival extends StatelessWidget {
//   const NewArrival({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           NewArrivalsCard(
//             name: "Nike Dunk Low LL",
//             price: 250,
//             image: 'assets/images/dunk1.png',
//             press: () {},
//           ),
//           NewArrivalsCard(
//             name: "Nike Air Max Furyosa",
//             price: 243,
//             image: 'assets/images/furyosa.png',
//             press: () {},
//           ),
//           NewArrivalsCard(
//             name: "Air Jordan 1 Elevate",
//             price: 320,
//             image: 'assets/images/elevate.png',
//             press: () {},
//           ),
//           const Padding(
//             padding: EdgeInsets.only(right: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NewArrivalsCard extends StatelessWidget {
//   const NewArrivalsCard(
//       {Key? key,
//       required this.image,
//       required this.price,
//       required this.name,
//       required this.press})
//       : super(key: key);

//   final String image, name;
//   final int price;
//   final Function() press;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         margin: const EdgeInsets.only(
//           left: 20,
//           right: 0,
//           top: 25,
//           bottom: 20,
//         ),
//         height: 140,
//         width: 185,
//         child: Stack(
//           children: [
//             Positioned(
//               right: 0,
//               left: 0,
//               bottom: 10,
//               child: Container(
//                 padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
//                 alignment: Alignment.center,
//                 height: 90,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       offset: const Offset(0, 7),
//                       blurRadius: 10,
//                       color: Colors.black12.withOpacity(0.1),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       '$name',
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                     Text(
//                       '\$$price',
//                       style: GoogleFonts.heebo(
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               right: 5,
//               left: 5,
//               top: 0,
//               child: SizedBox(
//                 height: 65,
//                 child: Image(
//                   image: AssetImage(image),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
