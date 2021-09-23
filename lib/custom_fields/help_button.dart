import 'package:flutter/material.dart';
import 'package:signin/configs/sigin_colors.dart';


class HelpButton extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final Function onClick;

  HelpButton({
    this.margin,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 24.0,
        width: 24.0,
        // margin: EdgeInsets.only(left: 6.0),
        margin: margin,
        decoration: BoxDecoration(
          color: lightBlackColor,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Center(
          child: Text(
            '?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {
        if (onClick != null) onClick();
      },
    );
  }
}