import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:signin/utilities/utils.dart';

class ExtendedImageLoadNetwork extends StatefulWidget {
  @override
  _ExtendedImageLoadNetworkState createState() => _ExtendedImageLoadNetworkState();
}

class _ExtendedImageLoadNetworkState extends State<ExtendedImageLoadNetwork> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20.0,
            ),
            Center(
              child: ExtendedImage.network(

                //_data.mpData.data.titleImage,
                //Square Image
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmqH7b0rOEazd3ZwKK2hQrOUBYqahyaRKJbg&usqp=CAU',


                // 'boy-girl-kashmir-children-early-ages-often-brought-to-'
                // 'begging-profession-india-165610083.jpg', //Large width image
                // Utils.assetsImage('empty_img_hd.jpg'),
                // height: 180.0,
                // width: imgContWidth,
                fit: BoxFit.fill,
                loadStateChanged: Utils.extendedImageStatesBuilder,

              ),
            ),

            Container(
              height: 20.0,
            ),
            Center(

              child: ExtendedImage.network(


                //_data.mpData.data.titleImage,
                //more height less width
                // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL6_NUfhAixclyJmIym-KOF7NT52S0LD9ZvA&usqp=CAU',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVPnD3S-_L058yIgep1N5oeAjLm6vpHiAn1g&usqp=CAU',
                //
                //
                // // 'boy-girl-kashmir-children-early-ages-often-brought-to-'
                // // 'begging-profession-india-165610083.jpg', //Large width image
                // Utils.assetsImage('empty_img_hd.jpg'),
                height: 180.0,
                
                // width: imgContWidth,
                fit: BoxFit.fill,
                loadStateChanged: Utils.extendedImageStatesBuilder,
                ///save netwrok image to photo
              //     Future<bool> saveNetworkImageToPhoto('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVPnD3S-_L058yIgep1N5oeAjLm6vpHiAn1g&usqp=CAU'
              //     , {bool useCache: true}) async {
              // var data = await getNetworkImageData(url, useCache: useCache);
              // var filePath = await ImagePickerSaver.saveFile(fileData: data);
              // return filePath != null && filePath != "";
              // }

              ),
            ),


            Container(
              height: 20.0,
            ),
            Center(

              child: ExtendedImage.network(
                //_data.mpData.data.titleImage,
                //more width less height
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCM7A7a_2YDeI2GyrQpk_GMweT-e1i7iXsgg&usqp=CAU',
                // https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Rg4EXjxoclwdlWy0_2dCKWc9Lv4NOfZvbA&usqp=CAU
                // 'boy-girl-kashmir-children-early-ages-often-brought-to-'
                // 'begging-profession-india-165610083.jpg', //Large width image
                // Utils.assetsImage('empty_img_hd.jpg'),
                // height: 180.0,
                // width: imgContWidth,
                fit: BoxFit.fill,
                loadStateChanged: Utils.extendedImageStatesBuilder,
              ),
            ),

          ],
        ),
      ),

    );
  }
}
