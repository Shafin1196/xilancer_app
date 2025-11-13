import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/widgets/bottomNav.dart';
import 'package:xilancer_app/widgets/greetings.dart';
import 'package:xilancer_app/widgets/scrollable.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  var bottomBarIndex = 0;
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = screenHeight(ctx: context);
    final width = screenWidth(ctx: context);
    return Scaffold(
      backgroundColor: scaffoldBg,
      // appBar: AppBar(toolbarHeight: height * 0.03, backgroundColor: scaffoldBg),
      body: SafeArea(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Greetings(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04,
                  vertical: height * 0.01,
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                      )
                    ),
                    hintText: "Search here....",
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: width*0.038
                      ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 4,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                        color: lightDarkBg,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.tune,),
                    ),
                    ),
                    
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Scrollables(),
                ),
              ),
            ],
          ),
        
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  
}
