import 'package:flutter/material.dart';
import 'package:myworkop/core/resources/manager_assets.dart';
import 'package:myworkop/core/resources/manager_colors.dart';
import 'package:myworkop/core/resources/manager_font_sizes.dart';
import 'package:myworkop/core/resources/manager_icon_sizes.dart';
import 'package:myworkop/core/resources/manager_raduis.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/core/resources/manager_text_styles.dart';

import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_width.dart';
import '../widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:




      pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.text_snippet_outlined),label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Acount'),
        ],
        currentIndex: _selectedIndex,

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          }
          );
        }
      ),
    );
  }
}
