import 'package:flutter/material.dart';
import 'package:girlkicks/model/shoes.dart';
import 'package:girlkicks/screen/detailpage.dart';
import 'package:girlkicks/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

class NewarrivalsPage extends StatelessWidget {
  const NewarrivalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'New Arrivals',
          style: GoogleFonts.heebo(
              fontSize: 23, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final Shoes shoesArrivals = newarrivals[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(shoesArrivals: shoesArrivals);
                    }));
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.grey[200],
                      // color: primaryColor,
                      // boxShadow: [
                      //   BoxShadow(
                      //     offset: const Offset(6, 4),
                      //     blurRadius: 8,
                      //     color: Colors.black12.withOpacity(0.1),
                      //   ),
                      // ],
                    ),
                    height: 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                (shoesArrivals.name),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              (shoesArrivals.brand),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              (shoesArrivals.price),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        //Spacer(),
                        Container(
                          height: double.infinity,
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          padding: const EdgeInsets.all(15),
                          width: 130,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(13),
                            // boxShadow: [
                            //   BoxShadow(
                            //     offset: const Offset(4, 7),
                            //     blurRadius: 8,
                            //     color: Colors.black12.withOpacity(0.1),
                            //   ),
                            // ],
                          ),
                          child: Hero(
                            tag: shoesArrivals.id,
                            child: Image(
                              image: AssetImage(shoesArrivals.imgCover),
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
          ],
        ),
      ),
    );
  }
}
