import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
// import 'package:seed_design/tools/widgets/support/shimar_animation.dart';

import '../shimar_animation.dart';

mixin Utils {

  static String assetsImage(String name, {String path = 'assets/images'}) {
    return '$path/$name';
  }

  static String assetsIcon(String name, {String path = 'assets/icons'}) {
    return '$path/$name';
  }

  ///Used for extendedImage with loadStateChanged parameter
  static Widget extendedImageStatesBuilder(ExtendedImageState state) {

    // state.extendedImageInfo.image.toByteData()

    Widget widget;
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        {
          widget = Container(
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: 200.0,
              maxHeight: 200.0,
            ),
            child: ShimarAnimation(),
          );
          break;
        }
      case LoadState.completed:
        {
          // state.extendedImageInfo.image.toByteData().then((byteData) {
          //   Uint8List imgBytes = byteData.buffer.asUint8List();
          //
          // });

          widget = ExtendedRawImage(
            image: state.extendedImageInfo?.image,
            fit: BoxFit.cover,
            // alignment: Alignment.centerLeft,
          );
          break;
        }
      case LoadState.failed:
        {
          widget = Container(
            color: Color(0x0D000000),
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: 200.0,
              maxHeight: 200.0,
            ),
          );
          break;
        }
    }
    return widget;
  }



}