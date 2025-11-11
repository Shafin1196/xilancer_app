import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/providers/future_providers.dart';
import 'package:xilancer_app/widgets/BannerCard.dart';

class SlidingBanner extends ConsumerStatefulWidget {
  const SlidingBanner({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SlidingBannerState();
}

class _SlidingBannerState extends ConsumerState<SlidingBanner> {

  @override
  Widget build(BuildContext context) {
    final height=screenHeight(ctx: context);
    final width=screenWidth(ctx: context);
    final controller=ref.watch(pageController);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: width*0.04,vertical:height*0.01 ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: bannerBg,
      child: Column(
        children: [
          SizedBox(
            height: height*0.19,
            width: width-((width*0.04)*2),
            child: PageView(
              controller: controller,
              children:  [
                BannerCard(
                  text: "Fast. Reliable. Hassle-Free Parcel Delivery.",
                  image: "assets/images/boy.png",
                ),
                BannerCard(
                  text: "Fast. Reliable. Hassle-Free Parcel Delivery.",
                  image: "assets/images/boy.png",
                ),
                BannerCard(
                  text: "Fast. Reliable. Hassle-Free Parcel Delivery.",
                  image: "assets/images/boy.png",
                ),
               
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}