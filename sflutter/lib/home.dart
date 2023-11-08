import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        HomeUserCard(),
        const SizedBox(height: 16),
        const HomeMealCard(),
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("홈", style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class HomeUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            color: Colors.blue,
          ),
          const SizedBox(width: 12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Text("상점 20점 벌점 5점", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeMealCard extends StatelessWidget {
  const HomeMealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Today's Menu
        HomeMealItem("아침", ["똥", "똥", "시리얼"], "600 kcal", Colors.purple),
        SizedBox(width: 16),
        HomeMealItem("점심", ["밥", "국", "홍승재"], "800 kcal", Colors.purple),
        SizedBox(width: 16),
        HomeMealItem("저녁", ["선생님", "김은오"], "700 kcal", Colors.purple),
      ],
    );
  }
}

class HomeMealItem extends StatelessWidget {
  final String title;
  final List<String> menus;
  final String calorie;
  final Color borderColor;

  const HomeMealItem(this.title, this.menus, this.calorie, this.borderColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 210.0,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: borderColor),
          ),
          Text(calorie, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          if (menus.isEmpty)
            const Text("등록된 정보가\n없습니다.", style: TextStyle(color: Colors.grey))
          else
            Column(
              children: menus
                  .map((menu) =>
                      Text(menu, style: const TextStyle(color: Colors.grey)))
                  .toList(),
            ),
        ],
      ),
    );
  }
}
