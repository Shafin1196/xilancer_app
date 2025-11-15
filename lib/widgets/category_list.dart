import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';

class Caterories extends ConsumerWidget {
  const Caterories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryNames = category.keys.toList();
    final categoryIcons = category.values.toList();
    final height = screenHeight(ctx: context);
    final width = screenWidth(ctx: context);
    return SizedBox(
      height: height*0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => InkWell(
          onTap: (){

          },
          child: Card(
            elevation: 0,
            color: white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(
              left: width * 0.04,
              bottom: height * 0.02,
              top: height * 0.018
            ),
            child: Container(
              padding:EdgeInsets.symmetric(horizontal: width*0.024,vertical: height*0.008) ,
              width: width*0.26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  categoryIcons[index],
                  Text(categoryNames[index],style: TextStyle(fontSize: width*0.03),),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
