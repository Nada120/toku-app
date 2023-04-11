import 'package:flutter/material.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffccccb3),
        title: const Text(
          'Toku',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Category(
              title: 'Numbers', 
              textColor: const Color(0xffffeb99), 
              backgroundColor: const Color(0xff00334d),
              process: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const NumbersPage(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              title: 'Family Members', 
              textColor: const Color(0xffffeb99), 
              backgroundColor: const Color(0xff541212),
              process: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const FamilyMemberPage(),
                ));
              },
            ),
          ),
          Expanded(
            child: Category(
              title: 'Colors', 
              textColor: const Color(0xffffeb99), 
              backgroundColor: const Color(0xff361500),
              process: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ColorPage(),
                ));
              },
            ),
          ),
          Expanded(
            child: Category(
              title: 'Phrases', 
              textColor: const  Color(0xffffeb99), 
              backgroundColor: const Color(0xff001a00),
              process: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const PhrasesPage(),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

