import 'package:flutter/material.dart';

// Container 위젯을 활용한 커스텀 위젯 만들기
// Container
// - Column
//    - Icon
//    - Text
// Container widget 특징
// 첫째, 자식이 없는 Container는 가능한 한 박스를 크게 만들려고 합니다
// 둘째, 자식 이 있는 Container는 자식의 크기 에 맞게 조정 됩 니 다.
class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        // 수평방향 항목적용
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          SizedBox(width: 25),
        ],
      ),
    );
  }

  // MenuItem Widget : 사용자 커스텀한 부품(Widget
  //  Container 를 이용해서 만들었다
  //  method
  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
