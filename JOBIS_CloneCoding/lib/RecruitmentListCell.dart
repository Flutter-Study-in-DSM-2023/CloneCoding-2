import 'package:flutter/material.dart';

class RecruitmentCell extends StatefulWidget {
  const RecruitmentCell({super.key});

  @override
  State<RecruitmentCell> createState() => _RecruitmentCellState();
}

class _RecruitmentCellState extends State<RecruitmentCell> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(14),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Circle(),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '웹 프론트엔드 / 백엔드',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "(주)마이다스아이티",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "실습 수당 100,000원",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 61,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(100)
          //more than 50% of width makes circle
          ),
    );
  }
}
