import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class NumberItem extends StatelessWidget {
  
  final Number number;
  
  const NumberItem({super.key, required this.number});

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
              number.image,
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
                number.jpName,
                style: const TextStyle(
                  color: Color(0xff00334d),
                  fontSize: 18,
                ),
              ),
              Text(
                number.enName,
                style: const TextStyle(
                  color: Color(0xff00334d),
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
              await player.play(DeviceFileSource(number.audioPlayer));
            }, 
            icon: const Icon(
              Icons.play_arrow,
              size: 35,
              color: Color(0xff00334d),
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
