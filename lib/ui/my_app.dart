import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // vamos a convertir este widget a uno con estado
  // el estado va a ser el color que se aplica en el tema

  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: ColorUtils.CreateMaterialColor('5F7161'),
      ),
      debugShowCheckedModeBanner: false,
      home:
          const ColorSelectionPage(), // vamos a pasarle updatePrimarySwatchColor como función
    );
  }

  void updatePrimarySwatchColor(String value) {}
}
