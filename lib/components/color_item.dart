import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/color.dart';

class ColorItems extends StatelessWidget {
  
  final ColorItem color;
  
  const ColorItems({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe6ccb3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xffc68c53),
            child: Image.asset(
              color.image,
              width: 65,
              height: 65,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Text(
                color.jpName,
                style: const TextStyle(
                  color: Color(0xff361500),
                  fontSize: 18,
                ),
              ),
              Text(
                color.enName,
                style: const TextStyle(
                  color: Color(0xff361500),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 12,
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(DeviceFileSource(color.audioPlayer));
            }, 
            icon: const Icon(
              Icons.play_arrow,
              size: 35,
              color: Color(0xff361500),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
