import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  int _sliding = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7FA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              '일정',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: CustomSlidingSegmentedControl<int>(
              fixedWidth: 170,
              innerPadding: EdgeInsets.all(3),
              initialValue: 1,
              children: {
                1: Text('시간표'),
                2: Text('학사일정'),
              },
              decoration: BoxDecoration(
                color: CupertinoColors.lightBackgroundGray,
                borderRadius: BorderRadius.circular(100),
              ),
              thumbDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (v) {
                setState(() {
                  _sliding = v;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          if (_sliding == 1)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10월 23일 (월)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
