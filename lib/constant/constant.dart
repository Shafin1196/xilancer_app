
import 'package:flutter/material.dart';
import 'package:xilancer_app/models/job_post.dart';

final String proPath="assets/images/pro.png";
final scaffoldBg=Color(0xffF2F4F5);
final bottoBarItemActive=Color(0xff007456);
final bottoBarItemInactive=Color(0xff838B98);
final white=Colors.white;
final lightDarkBg=Color(0xffF2F4F5);
final bannerBg=Color(0xff007456);
final bannerSlider=Color(0xff00AD80);
final dividerColor=Color(0xffEEEEEF);
final containerColor=Color(0xffFEEEE8);
final containerText=Color(0xffEF4D17);
final activeColor=Color(0xffC4C8CE);
final category={
  "Digital Marketing":CircleAvatar(
  backgroundImage: AssetImage("assets/images/dig.png"),
  radius: 16,
),
  "Graphics Design":CircleAvatar(
  backgroundImage: AssetImage("assets/images/gra.png"),
  radius: 16,
),
  "Web Development":CircleAvatar(
  backgroundImage: AssetImage("assets/images/web.png"),
  radius: 16,
),
  "Branding Design":CircleAvatar(
  backgroundImage: AssetImage("assets/images/brand.png"),
  radius: 16,
),
  "SEO Expert":CircleAvatar(
  backgroundImage: AssetImage("assets/images/seo.png"),
  radius: 16,
),
};

final List<JobPost> jobList=[
  JobPost(image: "assets/images/pro.png", time: "Posted 2 years ago", title: "Logo Design for Business Loan Brokerage fora  agency", price: 126,favourite: true),
  JobPost(image: "assets/images/pro2.png", time: "Posted 1 week ago", title: "Logo Design for Business Loan Brokerage fora  agency", price: 126,favourite: false),
  JobPost(image: "assets/images/pro3.png", time: "Posted 5 months ago", title: "Logo Design for Business Loan Brokerage fora  agency", price: 126,favourite: false)
];