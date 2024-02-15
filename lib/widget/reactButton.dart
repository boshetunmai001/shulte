import 'package:flutter/material.dart';
import 'package:shulte/assets/adaptivity.dart';

class TableElement extends StatefulWidget {
  final double size;
  final int num;
  final Color color;
  const TableElement({
    super.key,
    required this.num,
    required this.color,
    required this.size,
  });

  @override
  State<TableElement> createState() => _TableElementState();
}

class _TableElementState extends State<TableElement> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
      height: heightAdaptive(widget.size, context),
      width: widthAdaptive(widget.size, context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
          border: Border.all(width: 2, color: Colors.black)),
      child: Center(
          child: Text(
        '${widget.num}',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
