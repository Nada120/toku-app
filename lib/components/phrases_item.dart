import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases.dart';

class PhrasesItems extends StatelessWidget {
  const PhrasesItems({super.key, required this.phrases});
  
  final Phrases phrases;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe6ccb3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width-60,
                child: Text(
                  phrases.jpName,
                  style: const TextStyle(
                    color: Color(0xff001a00),
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  phrases.enName,
                  style: const TextStyle(
                    color: Color(0xff001a00),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 10,
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(DeviceFileSource(phrases.audioPlayer));
            }, 
            icon: const Icon(
              Icons.play_arrow,
              size: 35,
              color: Color(0xff001a00),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}