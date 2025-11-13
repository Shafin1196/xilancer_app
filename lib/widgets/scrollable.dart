import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/widgets/category_list.dart';
import 'package:xilancer_app/widgets/freelnacers.dart';
import 'package:xilancer_app/widgets/popular_services.dart';
import 'package:xilancer_app/widgets/recent_job.dart';
import 'package:xilancer_app/widgets/slideBanner.dart';

class Scrollables extends ConsumerStatefulWidget {
  const Scrollables({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScrollablesState();
}

class _ScrollablesState extends ConsumerState<Scrollables> {

  @override
  Widget build(BuildContext context) {
    final height=screenHeight(ctx: context);
    final width=screenWidth(ctx: context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                     textHeading(width, height,"Popular Categories"),
              Caterories(),
              SlidingBanner(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textHeading(width, height, "Popular Services"),
                  Spacer(),
                  TextButton(onPressed: (){}, 
                  child: Padding(
                    padding: EdgeInsets.only(right: width*0.02),
                    child: Text("Explore all",style: GoogleFonts.poppins(color: Colors.black),),
                  )
                  ),
                ],
              ),
              PopularServices(),
              textHeading(width, height, "Recent Job Posted"),
              RecentJob(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textHeading(width, height, "Top Rated Freelancers"),
                  Spacer(),
                  TextButton(onPressed: (){}, 
                  child: Padding(
                    padding: EdgeInsets.only(right: width*0.02),
                    child: Text("Explore all",style: GoogleFonts.poppins(color: Colors.black),),
                  )
                  ),
                ],
              ),
              Freelnacers(),
              
      ],
    );
  }
}