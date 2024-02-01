import 'package:flutter/material.dart';
import 'package:language/screens/colors_page.dart';
import 'package:language/screens/family_member_page.dart';
import 'package:language/screens/number_page.dart';
import 'package:language/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('TOKU'),
        backgroundColor: Color(0xff49332A),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return numberPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffF99531),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return familyMemberPage();
              }));
            },
            text: 'Family Members',
            color: Color(0xff5D8B3E),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return colorPage();
              }));
            },
            text: 'Colors',
            color: Color(0xff854CAE),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return phrasesPage();
              }));
            },
            text: 'Pharses',
            color: Color(0xff51B0D5),
          )
        ],
      ),
    );
  }
}
