import 'package:flutter/material.dart';

class TextClickNumWidget extends StatefulWidget {
  final int choiseNum;
  const TextClickNumWidget({super.key, required this.choiseNum});

  @override
  State<TextClickNumWidget> createState() => _TextClickNumWidgetState();
}

class _TextClickNumWidgetState extends State<TextClickNumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${widget.choiseNum}',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
