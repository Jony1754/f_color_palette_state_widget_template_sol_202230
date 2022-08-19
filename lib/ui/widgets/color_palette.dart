import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette(
      {Key? key,
      required this.baseColor,
      required this.baseColor2,
      required this.baseColor3,
      required this.baseColor4,
      required this.callback})
      : super(key: key);

  final String baseColor;
  final String baseColor2;
  final String baseColor3;
  final String baseColor4;
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // vamos a mostrar los elementos en un row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // usamos expanded para darle diferente tamaño a cada hijo
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () => callback(baseColor.toString()),
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () => callback(baseColor2.toString()),
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor2),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => callback(baseColor3.toString()),
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor3),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => callback(baseColor4.toString()),
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor4),
              ),
            ),
          )
        ],
      ),
    );
  }
}
