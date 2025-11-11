
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final searchProvider=FutureProvider.family<List<String>,List<String>>((ref,params){
  return [];
});

final searchText=StateProvider<String>((ref){
return '';
});

final pageController=StateProvider<PageController>((ref){
  return PageController();
});