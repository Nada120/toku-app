import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/family_member.dart';

class FamilyMemberItem extends StatelessWidget {
  const FamilyMemberItem({super.key, required this.familyMumber});
  
  final FamilyMember familyMumber;  

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
              familyMumber.image,
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
                familyMumber.jpName,
                style: const TextStyle(
                  color: Color(0xff541212),
                  fontSize: 18,
                ),
              ),
              Text(
                familyMumber.enName,
                style: const TextStyle(
                  color: Color(0xff541212),
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
              await player.play(DeviceFileSource(familyMumber.audioPlayer));
            }, 
            icon: const Icon(
              Icons.play_arrow,
              size: 35,
              color: Color(0xff541212),
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