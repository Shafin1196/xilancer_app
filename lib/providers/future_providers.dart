import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:http/http.dart' as http;
import 'package:xilancer_app/models/freelancher.dart';
import 'package:xilancer_app/models/project.dart';

// final searchProvider=FutureProvider.family<List<String>,List<String>>((ref,params){
//   return [];
// });

final searchText=StateProvider<String>((ref){
return '';
});

final pageController=StateProvider<PageController>((ref){
  final controller=PageController();
  return controller;
});
final searchController=StateProvider<TextEditingController>((ref){
  final controller=TextEditingController();
  return controller;
});

//popular project list
final populatList=FutureProvider<Project>((ref)async{
  var url="https://xilancer.xgenious.com/api/v1/projects/popular";
  try{
    final response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final jsonBody=jsonDecode(response.body);
      return Project.fromJson(jsonBody);
    }
    else{
      return Project(success: false, message: "error", dataList: [],pagination: null);
    }
  }catch(e){
    return Project(success: false, message: e.toString(), dataList: [],pagination: null);
  }
});

//freelancher list
final freelanchertList=FutureProvider<FreelancerListResponse>((ref)async{
  var url="https://xilancer.xgenious.com/api/v1/freelancers/list";
  print(1);
  try{
    final response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final jsonBody=jsonDecode(response.body);
      return FreelancerListResponse.fromJson(jsonBody);
    }
    else{
      return FreelancerListResponse(
        success: false, 
        message: "error!!", 
        data: [], 
        pagination: null,
        );
    }
  }catch(e){
return FreelancerListResponse(
        success: false, 
        message: e.toString(), 
        data: [], 
        pagination: null,
        );
  }
});
