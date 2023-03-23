import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/media_query_exmp.dart';
import 'package:fluttergrundlagen/presentation/widgets/page_view_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets/row_expanded_example.dart';

import '../widgets/custom_button.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        leading: Icon(
          Icons.home,
          size: 25,
        ),
        title: Text("Sau Schöne App Von Alex!"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContainerTextExample(),
              SizedBox(height: 10),
              RowExpandedExample(),
              SizedBox(height: 30),
              ProfilePicture(),
              SizedBox(height: 30),
              RectImage(),
              SizedBox(height: 30),
              MediaQueryExample(),
              SizedBox(height: 30),
              PageViewExample(),
              SizedBox(height: 30),
              // IconButton(
              //   onPressed: () {
              //     print("Icon button pressed.");
              //   },
              //   icon: Icon(Icons.home),
              //   splashColor: Colors.blueAccent,
              //   splashRadius: 20,
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // TextButton(
              //     onPressed: () {
              //       print("Text button pressed.");
              //     },
              //     child: Container(
              //        height: 20,
              //        width: 40,
              //       color: Colors.blue,
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Text(
              //           "Hello, World.",
              //           style: TextStyle(color: Colors.white, fontSize: 16),
              //         ),
              //       ),
              //     )),
              // SizedBox(
              //   height: 30,
              // ),
              CustomButton(
                text: "Hello, World.",
                textColor: Colors.black,
                buttonColor: Colors.blue,
                onPressed: () {
                  print("Custom button pressed!!");
                },
              ),
              SizedBox(height: 30),
              CustomButton(
                text: "Hello, 2World.",
                textColor: Colors.white,
                buttonColor: Colors.black,
                onPressed: () {
                  print("Custom button pressed 2!!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
