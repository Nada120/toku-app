import 'package:flutter/material.dart';
import 'package:toku_app/components/family_member_item.dart';
import 'package:toku_app/models/family_member.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  
  final List<FamilyMember> familyMember = const [
    FamilyMember(image: 'assets/images/family_members/family_grandfather.png', jpName: 'ojisan', enName: 'grandfather', audioPlayer: 'assets/sounds/family_members/grand father.wav'),
    FamilyMember(image: 'assets/images/family_members/family_grandmother.png', jpName: 'o bachan', enName: 'grandmother', audioPlayer: 'assets/sounds/family_members/grand mother.wav'),
    FamilyMember(image: 'assets/images/family_members/family_father.png', jpName: 'chichioya', enName: 'father', audioPlayer: 'assets/sounds/family_members/father.wav'),
    FamilyMember(image: 'assets/images/family_members/family_mother.png', jpName: 'hahaoya', enName: 'mother', audioPlayer: 'assets/sounds/family_members/mother.wav'),
    FamilyMember(image: 'assets/images/family_members/family_older_brother.png', jpName: 'ani', enName: 'older brother', audioPlayer: 'assets/sounds/family_members/older bother.wav'),
    FamilyMember(image: 'assets/images/family_members/family_older_sister.png', jpName: 'ane', enName: 'older sister', audioPlayer: 'assets/sounds/family_members/older sister.wav'),
    FamilyMember(image: 'assets/images/family_members/family_son.png', jpName: 'musuko', enName: 'son', audioPlayer: 'assets/sounds/family_members/son.wav'),
    FamilyMember(image: 'assets/images/family_members/family_daughter.png', jpName: 'musume', enName: 'daughter', audioPlayer: 'assets/sounds/family_members/daughter.wav'),
    FamilyMember(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'ototo', enName: 'younger brother', audioPlayer: 'assets/sounds/family_members/younger brother.wav'),
    FamilyMember(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'imoto', enName: 'younger sister', audioPlayer: 'assets/sounds/family_members/younger sister.wav'),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffffeb99),
        ),
        backgroundColor: const Color(0xff541212),
        title: const Text(
          'Family Mumbers',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xffffeb99),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: familyMember.length,
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xff541212),
          height: 0,
          thickness: 1,
        ),
        itemBuilder: (context, index) => FamilyMemberItem(familyMumber: familyMember[index]),
      ),
    );
  }
}