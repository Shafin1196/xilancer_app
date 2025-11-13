import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';

class RecentJob extends ConsumerStatefulWidget {
  const RecentJob({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecentJobState();
}

class _RecentJobState extends ConsumerState<RecentJob> {
  @override
  Widget build(BuildContext context) {
    final width = screenWidth(ctx: context);
    final height = screenHeight(ctx: context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.015,
      ),
      child: Column(
        children: [
          ListView.builder(
            itemCount: jobList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final currentData = jobList[index];
              return Container(
                margin: EdgeInsets.only(bottom: height * 0.018),
                height: height * 0.24,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: width * 0.04,
                            backgroundImage: AssetImage(currentData.image),
                          ),
                          SizedBox(width: width * 0.02),
                          Text(currentData.time),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: scaffoldBg,
                            radius: width * 0.045,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                currentData.favourite
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                size: width * 0.048,
                                color: currentData.favourite
                                    ? Colors.red
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        currentData.title,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.018,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        
                        children: [
                          Container(
                            padding: EdgeInsets.all(height * 0.005),
                            width: width * 0.26,
                            height: height * 0.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: scaffoldBg,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.work_outline,size: width*0.04,color: bannerBg,),
                                SizedBox(width: width*0.017,),
                                Text("MidLevel",style: TextStyle(color: bannerBg),),
                              ]),
                          ),
                          SizedBox(width: width*0.03,),
                          Container(
                            padding: EdgeInsets.all(height * 0.005),
                            width: width * 0.2,
                            height: height * 0.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF1ECFD),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Fixed",style: TextStyle(color: Color(0xff6A3BE8)),),
                              ]),
                          ),
                           SizedBox(width: width*0.03,),
                          Container(
                            padding: EdgeInsets.all(height * 0.005),
                            width: width * 0.25,
                            height: height * 0.033,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: scaffoldBg,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("• Sponsored",style: TextStyle(color: bannerBg),),
                              ]),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.013),
                      Container(
                        padding: EdgeInsets.all(height * 0.01),
                        width: width * 0.9,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: scaffoldBg,
                        ),
                        child: Row(
                          children: [
                            Text("Fixed Price"),
                            Spacer(),
                            Text(
                              "\$${currentData.price}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: height*0.055,
            width: width*0.95,
            child: ElevatedButton(onPressed: (){
            
            }, 
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text("Load More",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.black),)
            ),
          )
        ],
      ),
    );
  }
}
