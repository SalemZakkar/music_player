import 'package:flutter/material.dart';
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
        AnimatedContainer(
          constraints: const BoxConstraints.expand(),
          duration: const Duration(milliseconds: 500),
          decoration:
              BoxDecoration(gradient: appThemes[activeTheme].linearGradient),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //  color: Colors.black.withOpacity(0.1),
            child: widget.child)
      ],
    );
  }
}
