import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/moon.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/star.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/sun.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.color,
          centerTitle: true,
          title: Text("Theme Animation"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 20,
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: double.infinity),
                child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: themeService.isDarkMode
                            ? const [
                                Color(0XFF94A9FF),
                                Color(0xFF6B66CC),
                                Color(0xFF200F75),
                              ]
                            : const [
                                Color(0xDDFFFA66),
                                Color(0xDDFFA057),
                                Color(0xDD940B99),
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 70,
                          right: 50,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 50),
                            opacity: themeService.isDarkMode ? 1 : 0,
                            child: Star(),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 60,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 100),
                            opacity: themeService.isDarkMode ? 1 : 0,
                            child: Star(),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 200,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 150),
                            opacity: themeService.isDarkMode ? 1 : 0,
                            child: Star(),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 54,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 200),
                            opacity: themeService.isDarkMode ? 1 : 0,
                            child: Star(),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 250),
                            opacity: themeService.isDarkMode ? 1 : 0,
                            child: Star(),
                          ),
                        ),
                        AnimatedPositioned(
                          top: themeService.isDarkMode ? 100 : 170,
                          right: themeService.isDarkMode ? 100 : -40,
                          duration: Duration(milliseconds: 500),
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkMode ? 1 : 0,
                            duration: Duration(milliseconds: 400),
                            child: Moon(),
                          ),
                        ),
                        AnimatedPadding(
                          padding: EdgeInsets.only(
                              top: themeService.isDarkMode ? 110 : 50),
                          duration: Duration(milliseconds: 200),
                          child: Center(
                            child: Sun(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 225,
                            decoration: BoxDecoration(
                                color: themeService.isDarkMode
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).appBarTheme.color,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Test Heading",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(fontSize: 16),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Text",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dark Theme",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Switch(
                                      value: themeService.isDarkMode,
                                      onChanged: (value) {
                                        Provider.of<ThemeService>(context,
                                                listen: false)
                                            .toggleTheme();
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      );
    });
  }
}
