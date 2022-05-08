import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final double width;

  const DividerWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: width,
      color: Theme.of(context).dividerColor,
    );
  }
}
