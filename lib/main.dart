import 'package:flt_recipes/pages/recipe_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      // 전체적으로 앱모양과 느낌을 지정
      // theme 에서 Font를 지정 : 전체에 적용
      home: RecipePage(),
    );
  }
}
