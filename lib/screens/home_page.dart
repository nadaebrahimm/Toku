import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/family_memebers.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'resgister_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xffa8705e),
        title: const Text('Toku'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
           SizedBox(
             height: 15,
           ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Text(
                    "Learn more and",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      }));
                    },
        
                    child: const Text(
                      '  Sign In ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff078bf6),
                      ),
                    ),
                  ),
                  const Text(
                    "now!",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
