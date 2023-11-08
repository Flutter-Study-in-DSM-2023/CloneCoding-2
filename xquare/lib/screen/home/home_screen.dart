import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xquare/screen/home/notification_screen.dart';
import 'package:xquare/screen/home/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7FA),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '홈',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: const Icon(
                          CupertinoIcons.bell_solid,
                          color: Color(0xFF99959E),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        child: const Icon(
                          Icons.settings,
                          color: Color(0xFF99959E),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9E7EE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xFFC0BEC6),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '유지우',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '상점 40점 벌점 0점',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF605C64),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '오늘의 메뉴',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 160.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9F7FA),
                            borderRadius: BorderRadius.circular(10),
                            border: index == 2
                                ? Border.all(
                                    color: Color(0xFFD3B3FF),
                                  )
                                : null,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      meals[index]['time'].toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: index == 2
                                            ? Color(0xFFD3B3FF)
                                            : null,
                                      ),
                                    ),
                                    Text(
                                      '${meals[index]['calories']} Kcal',
                                      style: const TextStyle(
                                        color: Color(0xFF87858A),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  (meals[index]['menu'] as List<String>)
                                      .join('\n'),
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, Object>> meals = [
    {
      'time': '아침',
      'menu': ['토마토/설탕', '모닝빵/딸기잼', '오렌지아침에주스', '요거톡초코필로우&크런치'],
      'calories': 1454.3,
    },
    {
      'time': '점심',
      'menu': ['나물비빔밥', '미소된장국', '약고추장', '야채달걀말이&케첩', '배추김치', '오곡미숫가루라떼'],
      'calories': 2291.5,
    },
    {
      'time': '저녁',
      'menu': ['흑미밥', '꽃떡만두국', '오징어브로콜리숙회', '목살스테이크', '배추김치'],
      'calories': 1195.7,
    },
  ];
}
