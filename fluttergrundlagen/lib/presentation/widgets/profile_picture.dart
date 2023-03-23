import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      // color: Colors.black, // Hilfscolor
      child: Stack(
        children: [
          SizedBox(
            height: 200,
            child: CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage("assets/images/man.jpg")),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Flutter Freelancer",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text("& Udemy Dozent",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white70)),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
