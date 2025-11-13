import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/providers/future_providers.dart';

class Freelnacers extends ConsumerWidget {
  const Freelnacers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = screenHeight(ctx: context);
    final width = screenWidth(ctx: context);
    return Padding(
      padding: EdgeInsets.only(left: width * 0.04, bottom: height * 0.06),
      child: Consumer(
        builder: (context, ref, child) {
          final freelancerList = ref.watch(freelanchertList);
          return freelancerList.when(
            data: (data) {
              return SizedBox(
                height: height * 0.215,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.data!.length,
                  itemBuilder: (context, index) {
                    final currentData = data.data![index];
                    return Padding(
                      padding: EdgeInsets.only(right: width * 0.04),
                      child: Container(
                        padding: EdgeInsets.all(width * 0.03),
                        // height: height * 0.35,
                        width: width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: width * 0.05,
                                      backgroundImage: NetworkImage(
                                        currentData.image!,
                                      ),
                                      onBackgroundImageError:
                                          (exception, stackTrace) {},
                                      child: currentData.image!.isEmpty
                                          ? Icon(
                                              Icons.person,
                                              size: height * 0.08,
                                            )
                                          : null,
                                    ),
                                    currentData.isOnline!?Positioned(
                                      bottom: -1,
                                      right: -1,
                                      child: Container(
                                              width: 15,
                                              height: 15,
                                              decoration: BoxDecoration(
                                                color: activeColor, // status color
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.white, width: 2.5),
                                              ),
                                            ),
                                    ):SizedBox.shrink()
                                  ],
                                ),
                                SizedBox(width: width * 0.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.3,
                                          child: Text(
                                            currentData.name!,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: width * 0.015),
                                        currentData.isVerified!
                                            ? Icon(
                                                Icons.check_circle,
                                                size: width * 0.04,
                                                color: bannerBg,
                                              )
                                            : SizedBox.shrink(),
                                        SizedBox(width: width * 0.08),
                                        Container(
                                          padding: EdgeInsets.all(
                                            width * 0.0006,
                                          ),
                                          alignment: Alignment.center,
                                          height: height * 0.02,
                                          width: width * 0.125,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: containerColor,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.flash_on,
                                                size: width * 0.03,
                                                color: containerText,
                                              ),
                                              Text(
                                                'Pro',
                                                style: TextStyle(
                                                  fontSize: width * 0.03,
                                                  color: containerText,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(currentData.title ?? "NaN"),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                button(height, width, "Figma"),
                                SizedBox(width: width * 0.02),
                                button(height, width, "Mobile App"),
                                SizedBox(width: width * 0.02),
                                Text("+4"),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Icon(Icons.star_border,size: width*0.04,),
                                Text(" Review"),
                                Spacer(),
                                Text("4.5 (212 reviews)"),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                             Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: width*0.04,),
                                Text(" Location"),
                                Spacer(),
                                currentData.location?.country==null||currentData.location?.state==null?
                                Text("NaN"):Text("${currentData.location?.state},${currentData.location?.country}"),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                             Row(
                              children: [
                                Icon(Icons.attach_money,size: width*0.04,),
                                Text(" Hourly Rate"),
                                Spacer(),
                                // Text("\$${currentData.hourlyRate}"),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: "\$${currentData.hourlyRate}",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    )),
                                    TextSpan(text: "/hr",style: TextStyle(
                                      color: Colors.black
                                    )),
                                  ]
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            error: (error, stack) => Center(child: Text(error.toString())),
            loading: () => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  SizedBox button(double height, double width, String text) {
    return SizedBox(
      height: height * 0.025,
      width: width * 0.18,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          padding: EdgeInsets.all(width * 0.0006),
          backgroundColor: lightDarkBg,
          elevation: 0,
        ),
        child: Text(text, style: TextStyle(fontSize: width * 0.028)),
      ),
    );
  }
}
