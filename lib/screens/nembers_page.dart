import 'package:flutter/material.dart';
import '../components/number_item.dart';
import '../models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      imagePath: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_eight.png',
      jpName: 'hechi',
      enName: 'eight',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'nine',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff463228),
      ),

      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberItem(number: numbers[index]);
        },
      ),
    );
  }

}
