import 'package:flutter/material.dart';
import 'package:music_player/theme_module/themes/gradients.dart';
import 'package:music_player/theme_module/themes/list.dart';

class GradientBase extends StatefulWidget {
  final Widget child;

  const GradientBase({Key? key, required this.child}) : super(key: key);

  @override
  State<GradientBase> createState() => _GradientBaseState();
}

class _GradientBaseState extends State<GradientBase> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(gradient: gradients[activeTheme]),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.4),
            child: widget.child)
      ],
    );
  }
}
