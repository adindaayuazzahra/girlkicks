import 'package:flutter/material.dart';
import 'package:girlkicks/componen/featured.dart';
import 'package:girlkicks/componen/header_search.dart';
import 'package:girlkicks/componen/new_arrivals.dart';
import 'package:girlkicks/componen/subtitlewithmore.dart';
import 'package:girlkicks/model/shoes.dart';
import 'package:girlkicks/screen/detailpage.dart';
import 'package:girlkicks/screen/featured_page.dart';
import 'package:girlkicks/screen/newarrivals_page.dart';
import 'package:girlkicks/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          width: 90,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.drag_handle_rounded),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSearch(),
            const SizedBox(height: 30),
            SubtitleWithMore(
              text: "New Arrivals",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewarrivalsPage();
                }));
              },
            ),
            const NewArrivalsItems(),
            SubtitleWithMore(
              text: "Featured",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FeaturedPage();
                }));
              },
            ),
            const SizedBox(height: 15),
            const FeaturedItems(),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
        height: 60,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: accentColor,
          //unselectedItemColor: secLightColor,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // currentIndex: currentIndex,
          // onTap: (index) {
          //   setState(() {
          //     currentIndex = index;
          //   });
          // },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded), label: "beranda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "wishlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_rounded), label: "Riwayat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: "akun"),
          ],
        ),
      ),
    );
  }
}
