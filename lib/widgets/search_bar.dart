import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';
import 'package:xilancer_app/providers/future_providers.dart';

class SearchBar extends ConsumerWidget {
  SearchBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchController);
    final height = screenHeight(ctx: context);
    final width = screenWidth(ctx: context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.01,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0x00000000)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0x00000000)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0x00000000)),
          ),
          hintText: "Search here....",
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: width * 0.038,
          ),
          prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          suffixIcon: Container(
            margin: EdgeInsets.only(right: 4, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: lightDarkBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          ),
        ),
      ),
    );
  }
}
