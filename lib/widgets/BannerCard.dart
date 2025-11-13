import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/providers/future_providers.dart';

class BannerCard extends ConsumerWidget {
  // final String text;
  final String image;
  // required this.text, required this.image
  BannerCard({ required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = screenWidth(ctx: context);
    final height=screenHeight(ctx: context);
    final controller = ref.watch(pageController);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Find the Perfect Freelancer for\n',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: width*0.04),
                      ),
                      TextSpan(
                        text: 'Any ',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: width*0.04),
                      ),
                      TextSpan(
                        text: 'Project',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: width*0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: width*.04,
          bottom: height*0.04,
          child: SizedBox(
            height:  height*0.04,
            width: width*0.28,
            child: ElevatedButton(
                      onPressed: (){
                    
                    }, 
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(8),
                      backgroundColor: white
                    ),
                    child: Text(
                      "Explore Now",
                      style: GoogleFonts.poppins(
                        fontSize: height*0.015,
                        color: bannerBg,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    ),
          ),
        ),
        Positioned(
          right: width*0.04,
          bottom: -(height*0.01),
          child: Image.asset(image, height: height*0.19, width: width*0.45, fit: BoxFit.cover),
        ),
        Positioned(
          right: width * .4,
          bottom: height*0.019,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: bannerSlider,
              dotColor: bannerSlider,
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 4,
              spacing: 4,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
