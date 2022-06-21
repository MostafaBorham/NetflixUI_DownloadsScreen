// ignore_for_file: prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seekbar/flutter_seekbar.dart';

class NetflixScreenDownloads extends StatefulWidget {
  const NetflixScreenDownloads({Key? key}) : super(key: key);

  @override
  State<NetflixScreenDownloads> createState() => _NetflixScreenDownloadsState();
}

class _NetflixScreenDownloadsState extends State<NetflixScreenDownloads> {
  int currentIndex = 0;

  final imagelist = [
    [
      "https://marketplace.canva.com/EAE4sZqehD4/1/0/1131w/canva-gray-%26-black-monochrome-blind-forest-movie-present-poster-PRZ-uOOwgf0.jpg",
      "https://media1.popsugar-assets.com/files/thumbor/z5oKgNC9S4DS6Bay78Aoy5aLO4s/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2017/01/26/813/n/1922283/055dc333c3280d59_BeautyAndTheBeast58726d5b9fac8/i/Beauty-Beast-2017-Movie-Posters.jpg",
      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzntaXKEV3MjHabZii2L6jle9GYCA5dpz7YA&usqp=CAU",
      "https://images.wallpapersden.com/image/download/aladdin-2019-movie-banner-8k_a2plaGqUmZqaraWkpJRnamtlrWZpaWU.jpg",
      "https://www.stxfilms.co.uk/uploads/img/HomePageMain1920x750-desktop_1593093396_1593616387.jpg"
    ],
    [
      "https://media.gettyimages.com/photos/visitors-walk-past-posters-of-bollywood-films-on-display-during-the-picture-id980340598?s=612x612",
      "https://collider.com/wp-content/uploads/inception_movie_poster_banner_02.jpg",
      "https://saportakinsta.s3.amazonaws.com/wp-content/uploads/2019/03/Us-movie-banner-.jpg"
    ],
    [
      "https://m.prstej.com/uploads/articles/7635a2f4.jpg",
      "https://i0.wp.com/sunglasseswiki.com/wp-content/uploads/2020/02/Sunglasses-in-The-Gentlemen-Featured-Image-1200-x-628.jpg",
      "https://www.joblo.com/wp-content/uploads/2011/03/thor-poster-banner-1.jpg"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final items = [
      CarouselSliderItem(images: imagelist[0]),
      CarouselSliderItem(images: imagelist[1]),
      CarouselSliderItem(images: imagelist[2]),
      CarouselSliderItem(images: imagelist[3]),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Downloads',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        titleSpacing: screenSize.width * 0.02,
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.tag_faces,
            color: Colors.blue,
            size: 35,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                    label: Text(
                      'Smart Downloads',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: TextButton.styleFrom(primary: Colors.white),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Center(
                    child: Text(
                  'Introducing Downloads for You',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.12),
                    child: Text(
                      'We\'ll download personalized selection of movies and shows for you, so there\'s always something to watch on your device',
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white70, height: 1.3),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: screenSize.width * 0.35,
                    ),
                    CarouselSlider(
                        items: items,
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.9,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 2000),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                        )),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        'Set Up',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.12),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      'See What You Can Download',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SeekBar(
            backgroundColor: Colors.grey,
            progressColor: Colors.red,
            indicatorColor: Colors.transparent,
            value: currentIndex.toDouble(),
            isCanTouch: false,
            max: 3,
            min: 0,
          )
        ],
      ),
    );
  }
}

class CarouselSliderItem extends StatelessWidget {
  final List<String> images;
  const CarouselSliderItem({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SingleImageBuilder(
            angle: 30,
            image: images[0],
            margin: const EdgeInsets.only(bottom: 50, left: 100),
          ),
          SingleImageBuilder(
            angle: -30,
            image: images[1],
            margin: const EdgeInsets.only(bottom: 50, right: 100),
          ),
          SingleImageBuilder(
            angle: 0,
            image: images[2],
            margin: const EdgeInsets.all(0),
          ),
        ],
      ),
    );
  }
}

class SingleImageBuilder extends StatelessWidget {
  final margin;
  final int angle;
  final String image;
  const SingleImageBuilder(
      {Key? key,
      required this.margin,
      required this.angle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          margin: margin,
          width: screenSize.width * .4,
          height: screenSize.width * .5,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}
