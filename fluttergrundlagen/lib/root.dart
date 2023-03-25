import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_page.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/theme_anim_page.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          WidgetsExamplesPage(),
          CounterApp(),
          ThemeAnimationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).appBarTheme.color,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Examples"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: "Theme")
          ]),
    );
  }
}
