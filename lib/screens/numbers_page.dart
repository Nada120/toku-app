import 'package:flutter/material.dart';

import '../components/number_item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(image: 'assets/images/numbers/number_one.png', jpName: 'ichi', enName: 'one', audioPlayer: 'assets/sounds/numbers/number_one_sound.mp3'),
    Number(image: 'assets/images/numbers/number_two.png', jpName: 'ni', enName: 'two', audioPlayer: 'assets/sounds/numbers/number_two_sound.mp3'),
    Number(image: 'assets/images/numbers/number_three.png', jpName: 'san', enName: 'three', audioPlayer: 'assets/sounds/numbers/number_three_sound.mp3'),
    Number(image: 'assets/images/numbers/number_four.png', jpName: 'shi', enName: 'four', audioPlayer: 'assets/sounds/numbers/number_four_sound.mp3'),
    Number(image: 'assets/images/numbers/number_five.png', jpName: 'go', enName: 'five',  audioPlayer: 'assets/sounds/numbers/number_five_sound.mp3'),
    Number(image: 'assets/images/numbers/number_six.png', jpName: 'roku', enName: 'sex', audioPlayer: 'assets/sounds/numbers/number_six_sound.mp3'),
    Number(image: 'assets/images/numbers/number_seven.png', jpName: 'sebun', enName: 'seven', audioPlayer: 'assets/sounds/numbers/number_seven_sound.mp3'),
    Number(image: 'assets/images/numbers/number_eight.png', jpName: 'hachi', enName: 'eight', audioPlayer: 'assets/sounds/numbers/number_eight_sound.mp3'),
    Number(image: 'assets/images/numbers/number_nine.png', jpName: 'kyu', enName: 'nine', audioPlayer: 'assets/sounds/numbers/number_nine_sound.mp3'),
    Number(image: 'assets/images/numbers/number_ten.png', jpName: 'ju', enName: 'ten', audioPlayer: 'assets/sounds/numbers/number_ten_sound.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffffeb99),
        ),
        backgroundColor: const Color(0xff00334d),
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xffffeb99),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: numbers.length,
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xff00334d),
          height: 0,
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return NumberItem(number: numbers[index],);
        },
      ),
      
    );
  }
}

