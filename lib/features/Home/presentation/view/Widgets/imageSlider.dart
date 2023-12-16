import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../Data/carouselImages.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
    itemCount: 2,
    itemBuilder:(context, index, realIndex) {
      return Container(
        child: Image.asset(images[index]),);
    }, 
    options: CarouselOptions(autoPlay: true));
  }
}

