import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class DotIndicator extends StatefulWidget {

  const DotIndicator({ super.key, required this.pageController });
  final PageController pageController;


  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {

   @override
   Widget build(BuildContext context) {
       return SmoothPageIndicator(
            controller: widget.pageController,
            count: 2,
            effect:  const ExpandingDotsEffect(
              activeDotColor: AppColors.black,
              dotColor: AppColors.categoryNames,
              dotHeight: 6,
              strokeWidth: 1.5,
              dotWidth: 8,
              radius: 10,
            ),
            
          );
  }
}