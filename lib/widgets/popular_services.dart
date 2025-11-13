import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/providers/future_providers.dart';

class PopularServices extends ConsumerWidget {
  const PopularServices({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = screenHeight(ctx: context);
    final width = screenWidth(ctx: context);
    return Consumer(
      builder: (context, ref, child) {
        final popularData = ref.watch(populatList);
        return popularData.when(
          data: (data) {
            return Padding(
              padding: EdgeInsets.only(left: width * 0.04,),
              child: SizedBox(
                height: height * 0.4,
                child: ListView.builder(
                  itemCount: data.dataList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final currentData=data.dataList[index];
                    return Padding(
                      padding: EdgeInsets.only(right: width*0.03),
                      child: SizedBox(
                        width: width*0.72,
                        child: Card(
                          color: white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(width*0.027),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      child: Image.network(
                                        fit: BoxFit.fill,
                                        currentData.image,
                                        height: height*0.2,
                                        width: width*0.65,
                                      ),
                                      ),
                                      Positioned(
                                        top: 12,
                                        left: 8,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.all(width*0.005),
                                          height: height*0.033,
                                          width: width*0.24,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Text("Sponsored",style: GoogleFonts.poppins(color: bannerBg,fontWeight: FontWeight.w600),),
                                        ),
                                        ),
                                      Positioned(
                                        right: 8,
                                        top: 10,
                                        child: CircleAvatar(
                                          backgroundColor: white,
                                          radius: width*0.048,
                                          child: IconButton(
                                            onPressed: (){
                                        
                                          }, 
                                          icon: Icon(Icons.favorite_outline,size: width*0.06,),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                SizedBox(height: height*0.01,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star_outline,size: height*0.022,),
                                    Text(" 4.5 (23 Reviews)"),
                                    SizedBox(width: width*0.20,),
                                    Text("Level •2",textAlign: TextAlign.end,),
                                  ],
                                ),
                                SizedBox(height: height*0.01,),
                                Text(
                                  currentData.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: height*0.02
                                  ),
                                ),
                                Divider(
                                  color: dividerColor,
                                ),
                                Container(
                                  padding: EdgeInsets.all(width*0.02),
                                  width: width*0.7,
                                  height: height*0.045,
                                  decoration: BoxDecoration(
                                    color: scaffoldBg,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Starting From",style: TextStyle(color: Color(0xff969DA7)),),
                                      SizedBox(width: width*0.3,),
                                      Text("\$126",
                                      style: TextStyle(fontWeight: FontWeight.bold,),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          )
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
          error: (error, stack) {
            return Center(child: Text("error!!"));
          },
          loading: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
