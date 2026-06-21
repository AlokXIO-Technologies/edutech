import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {

    final banners = [
      "assets/banners/banner1.png",
      "assets/banners/banner2.png",
      "assets/banners/banner3.png",
    ];

    return CarouselSlider.builder(
      itemCount: banners.length,

      itemBuilder: (
          context,
          index,
          realIndex,
          ) {

        return ClipRRect(
          borderRadius:
          BorderRadius.circular(20),

          child: Image.asset(
            banners[index],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        );
      },

      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        autoPlayInterval:
        const Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 0.9,
      ),
    );
  }
}