import 'package:flt_recipes/components/recipe_list_item.dart';
import 'package:flt_recipes/components/recipe_menu.dart';
import 'package:flt_recipes/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  // Column 은 스크롤 기능이 없다
  // -> Listview 를 이용하여 스크롤 기능을 추가
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색 white
      appBar: _buildRecipeAppBar(), // 빈 Appbar 연결 method
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 수평으로 여백주기
        //child: Column(   // 스크롤 기능 없다
        child: ListView(
          // 스크롤 추가
          //  crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽정렬
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white, // 배경색
      elevation: 1.0, // AppBar 의 그림자 효과
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
