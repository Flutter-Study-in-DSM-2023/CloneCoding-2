import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '알림',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble_fill,
                          size: 20,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '공지사항',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '1일 전',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Text(
                  '새로운 공지가 등록되었습니다.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
