import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  final String title;
  final double width;
  final double paddingSize;
  final bool isSelected;
  final VoidCallback onTap;
  final double? borderRadius;

  const ToggleWidget({
    required this.title,
    required this.width,
    required this.paddingSize,
    required this.isSelected,
    required this.onTap,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(left: 15),
        width: widget.width,
        height: 30,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xFF9651FA) : Color(0xFFF2F0F5),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: widget.isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}

