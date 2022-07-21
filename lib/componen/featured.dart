import 'package:flutter/material.dart';
import 'package:girlkicks/model/shoes.dart';
import 'package:girlkicks/screen/detailpage.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final Shoes featured = featureds[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPageFeatured(featured: featured);
            }));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            // color: Colors.amber,
            height: 95,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  padding: const EdgeInsets.all(15),
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: const Offset(4, 7),
                    //     blurRadius: 8,
                    //     color: Colors.black12.withOpacity(0.1),
                    //   ),
                    // ],
                  ),
                  child: Hero(
                    tag: featured.id,
                    child: Image(
                      image: AssetImage(featured.imgCover),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        (featured.name),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Text(
                      (featured.brand),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      (featured.price),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: featureds.length,
    );
  }
}

// class Featured extends StatelessWidget {
//   const Featured({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         FeaturedCard(
//           press: () {},
//           name: 'Nike React Infinity Run Flyknit 3',
//           brand: 'Nike',
//           price: 216,
//           image: 'assets/images/React.png',
//         ),
//         FeaturedCard(
//           press: () {},
//           name: 'Nike React Infinity Run Flyknit 3',
//           brand: 'Nike',
//           price: 216,
//           image: 'assets/images/React.png',
//         ),
//         FeaturedCard(
//           press: () {},
//           name: 'Nike React Infinity Run Flyknit 3',
//           brand: 'Nike',
//           price: 216,
//           image: 'assets/images/React.png',
//         ),
//         FeaturedCard(
//           press: () {},
//           name: 'Nike React Infinity Run Flyknit 3',
//           brand: 'Nike',
//           price: 216,
//           image: 'assets/images/React.png',
//         ),
//         FeaturedCard(
//           press: () {},
//           name: 'Nike React Infinity Run Flyknit 3',
//           brand: 'Nike',
//           price: 216,
//           image: 'assets/images/React.png',
//         ),
//       ],
//     );
//   }
// }

// class FeaturedCard extends StatelessWidget {
//   const FeaturedCard({
//     required this.press,
//     required this.name,
//     required this.brand,
//     required this.price,
//     required this.image,
//     Key? key,
//   }) : super(key: key);

//   final String image, name, brand;
//   final int price;
//   final Function() press;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//         // color: Colors.amber,
//         height: 95,
//         child: Row(
//           children: [
//             Container(
//               height: double.infinity,
//               padding: EdgeInsets.all(15),
//               width: 145,
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(15),
//                 // boxShadow: [
//                 //   BoxShadow(
//                 //     offset: const Offset(4, 7),
//                 //     blurRadius: 8,
//                 //     color: Colors.black12.withOpacity(0.1),
//                 //   ),
//                 // ],
//               ),
//               child: Image(image: AssetImage(image)),
//             ),
//             SizedBox(width: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 150,
//                   child: Text(
//                     '$name',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'By $brand',
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 2,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const SizedBox(height: 7),
//                 Text(
//                   '\$$price',
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 2,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
