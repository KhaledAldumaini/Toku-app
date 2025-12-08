import 'package:flutter/material.dart';
import 'package:toku/models/color_model.dart';
import '../components/color_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColorModel> colors = const [
    ColorModel(
      imagePath: 'assets/images/colors/color_black.png',
      jpName: 'kuro',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kusunda Kiiro',
      enName: 'Dusty yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ColorModel(
      imagePath: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff463228),
      ),

      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(
            containerColor: Color(0xffDEd887),
            color: colors[index],
          );
        },
      ),
    );
  }
}
