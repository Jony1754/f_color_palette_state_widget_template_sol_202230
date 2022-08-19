import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('Hello'),
          child: Icon(Icons.plus_one),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // https://colorhunt.co/
                ColorPalette(
                    baseColor: '222831',
                    baseColor2: '393E46',
                    baseColor3: '00ADB5',
                    baseColor4: 'EEEEEE',
                    callback: showColor),
                ColorPalette(
                    baseColor: '5F7161',
                    baseColor2: '6D8B74',
                    baseColor3: 'EFEAD8',
                    baseColor4: 'D0C9C0',
                    callback: showColor),

                ColorPalette(
                    baseColor: 'F9CEEE',
                    baseColor2: 'F9F3EE',
                    baseColor3: 'CCF3EE',
                    baseColor4: '97C4B8',
                    callback: showColor),

                ColorPalette(
                    baseColor: '541690',
                    baseColor2: 'FF4949',
                    baseColor3: 'FF8D29',
                    baseColor4: 'FFCD38',
                    callback: showColor),

                ColorPalette(
                    baseColor: '764AF1',
                    baseColor2: '9772FB',
                    baseColor3: 'F2F2F2',
                    baseColor4: 'F32424',
                    callback: showColor),

                ColorPalette(
                    baseColor: 'E8F9FD',
                    baseColor2: '99C4C8',
                    baseColor3: 'E5CB9F',
                    baseColor4: 'EEE4AB',
                    callback: showColor),
              ],
            ),
          ),
        ));
  }

  void showColor(String value) {
    // aqui llamar al callback del main widget
  }
}
