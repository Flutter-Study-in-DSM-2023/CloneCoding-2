import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xquare/core/widget/toggle_widget.dart';

class ApplyScreen extends StatefulWidget {
  const ApplyScreen({Key? key}) : super(key: key);

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7FA),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              '신청',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '잔류 신청',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '목요일 10시까지는 잔류 신청을 완료해주세요.',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                // Container(
                //   width: 55,
                //   height: 35,
                //   decoration: BoxDecoration(
                //     color: CupertinoColors.systemPurple,
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                //   child: Center(
                //     child: Text(
                //       '잔류',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
