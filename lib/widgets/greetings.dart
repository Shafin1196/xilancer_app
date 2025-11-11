import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    final width=screenWidth(ctx:context);
    final height=screenHeight(ctx: context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.04,vertical:height*0.01 ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              "Welcome Back!", 
              style: TextStyle(
                fontSize: width*0.035,
              ),
              ),
              Text(
              "Leslie Alexander", 
              style: GoogleFonts.poppins(
                fontSize: width*0.045,
                fontWeight: FontWeight.w500,
              ),
              ),
              ],
              ),
          Spacer(),
          CircleAvatar(
            radius: width*0.05,
            backgroundImage: AssetImage(proPath),
          ),
        ],
      ),
    );
  }
}
