import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xquare/core/widget/toggle_widget.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7FA),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '피드',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Color(0xFFF9F7FA),
            elevation: 0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index == 0) {
                  return Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ToggleWidget(
                            title: '전체',
                            width: 55,
                            isSelected: _selectedIndex == 0,
                            paddingSize: 10,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                          ),
                          ToggleWidget(
                            title: '공지사항',
                            width: 80,
                            isSelected: _selectedIndex == 1,
                            paddingSize: 10,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 1;
                              });
                            },
                          ),
                          ToggleWidget(
                            title: '대나무숲',
                            width: 80,
                            isSelected: _selectedIndex == 2,
                            paddingSize: 10,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color:
                                    const Color(0xFFE9E7EE),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.black26),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    size: 30,
                                    color: Color(0xFFC0BEC6),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '익명',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      '11월 6일',
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.more_vert,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          '급식실에 가방 놓고가신분\n기숙사 입구에 뒀습니다 찾아가세요',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Color(0xFFDBD7E0),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '좋아요 2',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  size: 18,
                                  color: Color(0xFFDBD7E0),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '댓글 6',
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFDBD7E0),
                        height: 30,
                      ),
                    ],
                  );
                }
              },
              childCount: 11,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF9651FA),
        onPressed: null,
        shape: CircleBorder(),
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
