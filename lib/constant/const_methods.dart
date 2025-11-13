import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

//screen height
double screenHeight({required BuildContext ctx}){
  return MediaQuery.of(ctx).size.height;
}
//screen width
double screenWidth({required BuildContext ctx}){
  return MediaQuery.of(ctx).size.width;
}

Padding textHeading(double width, double height,String text) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.04,vertical:height*0.01 ),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: width*0.045,
                  fontWeight: FontWeight.w500
                ),
              ),
            );
  }