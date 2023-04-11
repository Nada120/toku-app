import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';
import '../components/color_item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  
  final List<ColorItem> color = const [
    ColorItem(image: 'assets/images/colors/color_black.png', jpName: 'kuro', enName: 'black', audioPlayer: 'assets/sounds/colors/black.wav'),
    ColorItem(image: 'assets/images/colors/color_brown.png', jpName: 'chairo', enName: 'brown', audioPlayer: 'assets/sounds/colors/brown.wav'),
    ColorItem(image: 'assets/images/colors/color_yellow.png', jpName: 'kiiro', enName: 'yellow', audioPlayer: 'assets/sounds/colors/yellow.wav'),
    ColorItem(image: 'assets/images/colors/color_gray.png', jpName: 'gure', enName: 'gray', audioPlayer: 'assets/sounds/colors/gray.wav'),
    ColorItem(image: 'assets/images/colors/color_green.png', jpName: 'midori', enName: 'green', audioPlayer: 'assets/sounds/colors/green.wav'),
    ColorItem(image: 'assets/images/colors/color_red.png', jpName: 'aka', enName: 'red', audioPlayer: 'assets/sounds/colors/red.wav'),
    ColorItem(image: 'assets/images/colors/color_white.png', jpName: 'shiro', enName: 'white', audioPlayer: 'assets/sounds/colors/white.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffffeb99),
        ),
        backgroundColor: const Color(0xff361500),
        title: const Text(
          'Colors',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xffffeb99),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ColorItems(color: color[index],), 
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xff361500),
          height: 0,
          thickness: 1,
        ), 
        itemCount: color.length,
      ),    
    );
  }
}