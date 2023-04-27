import 'package:flutter/material.dart';

class TableCellWedgit extends StatelessWidget {
  const TableCellWedgit({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
