import 'package:flutter/material.dart';

/*Shimar frame layout style*/
import 'package:flutter/material.dart';

class ShimarAnimation extends StatefulWidget {
//  final double height;
//  final double width;
  final double cornerRadius;

  ShimarAnimation({
    Key key,
//    this.height = 200,
//    this.width = 200,
    this.cornerRadius = 4,
  }) : super(key: key);

  @override
  _ShimarAnimationState createState() => _ShimarAnimationState();
}

class _ShimarAnimationState extends State<ShimarAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(
          () {
        setState(() {});
      },
    );

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//      width: widget.width,
//      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.cornerRadius),
        gradient: LinearGradient(
          begin: Alignment(gradientPosition.value, 0),
          end: const Alignment(-1, 0),
          colors: const [
            Color(0x0D000000),
            Color(0x1A000000),
            Color(0x0D000000)
          ],
        ),
      ),
    );
  }
}