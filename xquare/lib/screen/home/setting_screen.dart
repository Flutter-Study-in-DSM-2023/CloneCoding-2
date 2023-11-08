import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '설정',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '알림',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              '공지사항 알림을 제외한 알림을 끌 수 있어요.',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
