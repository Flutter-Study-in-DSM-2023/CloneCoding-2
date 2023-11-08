import 'package:flutter/material.dart';
import 'package:jobis_clone_coding/RecruitmentListCell.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus(); // 키보드 닫기 이벤트
      },
      child: MaterialApp(
        home: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        const Text(
                          '모집의뢰서 조회하기',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 14, right: 14),
                                  hintText: "무엇을 검색할까요?",
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: CupertinoColors.inactiveGray),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: CupertinoColors.inactiveGray),
                                      borderRadius: BorderRadius.circular(5)),
                                  suffixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/filter.png",
                                    width: 24, height: 24, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                      ],
                    );
                  } else {
                    return const RecruitmentCell();
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
