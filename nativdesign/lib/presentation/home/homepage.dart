import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          "homepage",
          style: toolbarTextStyle,
        ),
        cupertino: (_, __) => CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              PlatformSlider(
                  value: value,
                  onChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  }),
              PlatformIconButton(
                onPressed: () {
                  print("Icon Button Pressed!");
                },
                // icon: Icon(Icons.info)),
                materialIcon: const Icon(Icons.info),
                cupertinoIcon: const Icon(CupertinoIcons.info),
              ),
              Icon(PlatformIcons(context).info),
              const SizedBox(
                height: 30,
              ),
              PlatformCircularProgressIndicator(),
              const SizedBox(
                height: 30,
              ),
              PlatformWidget(
                cupertino: (_, __) =>
                    Container(height: 20, width: 40, color: Colors.red),
                material: (_, __) =>
                    Container(height: 20, width: 40, color: Colors.blueAccent),
              ),
              const SizedBox(
                height: 30,
              ),
              PlatformWidgetBuilder(
                material: (_, child, __) => InkWell(
                  child: child,
                  onTap: () {
                    print("Tap andr.");
                  },
                ),
                cupertino: (_, child, __) => GestureDetector(
                  child: child,
                  onTap: () {
                    print("Tap iOS");
                  },
                ),
                child: Container(
                  color: Colors.teal,
                  height: 50,
                  width: 100,
                  child: const Center(
                    child: Text("button"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
