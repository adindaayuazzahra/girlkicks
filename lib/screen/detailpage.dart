import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:girlkicks/model/shoes.dart';
import 'package:girlkicks/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

class DetailPage extends StatefulWidget {
  final Shoes shoesArrivals;

  const DetailPage({Key? key, required this.shoesArrivals}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int activeSize = 0;
  int activeColor = 0;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
        actions: [
          FavoriteButton(),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height * 0.40,
            child: Hero(
              tag: widget.shoesArrivals.id,
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  //enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
                items: widget.shoesArrivals.imageGallery
                    .map(
                      (item) => Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
                        child: SimpleShadow(
                          opacity: 0.4,
                          color: Colors.black,
                          offset: Offset(3, 3),
                          sigma: 7,
                          child: Image.asset(
                            item,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                widget.shoesArrivals.imageGallery.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  alignment: Alignment.center,
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 40, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (widget.shoesArrivals.name),
                          //overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          (widget.shoesArrivals.brand),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          (widget.shoesArrivals.shortDesc),
                          style: GoogleFonts.lora(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          'Select Size (UK)',
                          style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 6),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                widget.shoesArrivals.size.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    activeSize = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 5, top: 5),
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: activeSize == index
                                            ? Colors.black
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.black, width: 0.8)),
                                    child: Center(
                                      child: Text(
                                        widget.shoesArrivals.size[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: activeSize == index
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          'Pick The Color',
                          style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                widget.shoesArrivals.color.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    activeColor = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 2, bottom: 5, top: 5),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: activeColor == index
                                            ? Border.all(
                                                color: Colors.black, width: 0.8)
                                            : Border.all(
                                                color: bgColor, width: 0)),
                                    child: Center(
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          color:
                                              widget.shoesArrivals.color[index],
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                // backgroundColor: Colors.transparent,
                                // elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            padding: EdgeInsets.zero,
                                            icon: Icon(Icons.close),
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 20, 20),
                                      //height: size.height * 0.4,
                                      child: Text(
                                        widget.shoesArrivals.description,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'View Detail Product',
                            style: GoogleFonts.heebo(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          (widget.shoesArrivals.price),
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 9),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Add to Chart',
                                  style: GoogleFonts.heebo(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPageFeatured extends StatefulWidget {
  final Shoes featured;

  const DetailPageFeatured({Key? key, required this.featured})
      : super(key: key);

  @override
  State<DetailPageFeatured> createState() => _DetailPageFeaturedState();
}

class _DetailPageFeaturedState extends State<DetailPageFeatured> {
  int activeSize = 0;
  int activeColor = 0;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
        actions: [FavoriteButton()],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height * 0.40,
            child: Hero(
              tag: widget.featured.id,
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  //enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
                items: widget.featured.imageGallery
                    .map(
                      (item) => Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
                        child: SimpleShadow(
                          opacity: 0.4,
                          color: Colors.black,
                          offset: Offset(3, 3),
                          sigma: 7,
                          child: Image.asset(
                            item,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.featured.imageGallery.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  alignment: Alignment.center,
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 35, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (widget.featured.name),
                          //overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          (widget.featured.brand),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          (widget.featured.shortDesc),
                          style: GoogleFonts.lora(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Select Size (UK)',
                          style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 6),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(widget.featured.size.length,
                                (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    activeSize = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 5, top: 5),
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: activeSize == index
                                            ? Colors.black
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.black, width: 0.8)),
                                    child: Center(
                                      child: Text(
                                        widget.featured.size[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: activeSize == index
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Pick The Color',
                          style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                widget.featured.color.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    activeColor = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 2, bottom: 5, top: 5),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: activeColor == index
                                            ? Border.all(
                                                color: Colors.black, width: 0.8)
                                            : Border.all(
                                                color: bgColor, width: 0)),
                                    child: Center(
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          color: widget.featured.color[index],
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            padding: EdgeInsets.zero,
                                            icon: Icon(Icons.close),
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 20, 20),
                                      //height: size.height * 0.4,
                                      child: Text(
                                        widget.featured.description,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'View Detail Product',
                            style: GoogleFonts.heebo(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          (widget.featured.price),
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 9),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Add to Chart',
                                  style: GoogleFonts.heebo(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
