import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Screen 2"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Navigate Back",
                textColor: Colors.black,
                buttonColor: Colors.yellow,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Go to screen 1",
                textColor: Colors.black,
                buttonColor: Colors.greenAccent,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/screen1");
                },
              ),
            ],
          ),
        ));
  }
}
