import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DivisionWidget extends StatelessWidget {
  final double widthDivison;
  const DivisionWidget({super.key, required this.widthDivison});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: widthDivison,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    );
  }
}
