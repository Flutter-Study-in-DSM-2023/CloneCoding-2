import 'package:flutter/material.dart';
import 'package:sex/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavBarItem(
    IconData icon,
    int index,
    String title,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () => _onItemTapped(index),
          color: Colors.purple[300],
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List _pages = [
      Home(),
      const Text('page2'),
      const Text('page3'),
      const Text('page4'),
      const Text('page5')
    ];
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex], // 페이지와 연결
      ),
      appBar: AppBar(
        title: const Text('Row Widget test'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavBarItem(Icons.home, 0, '홈'),
              _buildNavBarItem(Icons.calendar_today, 1, '일정'),
              _buildNavBarItem(Icons.message, 2, '피드'),
              _buildNavBarItem(Icons.check_circle, 3, '신청'),
              _buildNavBarItem(Icons.border_all, 4, '전체'),
            ],
          ),
        ),
      ),
    );
  }
}
