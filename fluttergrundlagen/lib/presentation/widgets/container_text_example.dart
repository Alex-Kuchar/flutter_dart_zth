import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 8,
      child: Container(
          height: 180,
          // width: 300,
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: Colors.black12,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Container(
            alignment: Alignment.center,
            // padding: EdgeInsets.only(bottom: 20),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5)),
            child: Text("Text Example",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Rubik",
                  fontSize: 20,
                )),
          ))),
    );
  }
}
