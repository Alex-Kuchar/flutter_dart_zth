import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativdesign/presentation/home/homePage.dart';

import '../../theme.dart';
import '../../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonValue = true;
  String switchText = "Remember me!";
  String usernameEntered = "";
  String passwordEntered = "";

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          "FAPD",
          style: toolbarTextStyle,
        ),
        cupertino: (_, __) => CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
        ),
      ),
      body: ListView(
        children: [
          // Username
          Padding(
            padding: const EdgeInsets.only(
                top: padding_50, left: padding_20, right: padding_20),
            child: PlatformTextField(
              keyboardType: TextInputType.text,
              onChanged: (text) {
                usernameEntered = text;
              },
              material: (_, __) => MaterialTextFieldData(
                  decoration: const InputDecoration(
                labelText: username,
              )),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: username,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding_20),
            child: PlatformTextField(
              keyboardType: TextInputType.text,
              onChanged: (text) {
                passwordEntered = text;
              },
              material: (_, __) => MaterialTextFieldData(
                  decoration: const InputDecoration(
                    labelText: password,
                  ),
                  obscureText: true),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: password,
                obscureText: true,
              ),
            ),
          ),

          // Switch
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(padding_20),
                child: PlatformSwitch(
                  value: buttonValue,
                  onChanged: (value) {
                    setState(() {
                      buttonValue = value;

                      if (value) {
                        switchText = "Remember me!";
                      } else {
                        switchText = "Don't remember me!";
                      }
                    });
                  },
                ),
              ),
              Text(
                "$switchText",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(padding_20),
            child: PlatformElevatedButton(
              child: Text(
                login,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              material: (_, __) => MaterialElevatedButtonData(),
              cupertino: (_, __) => CupertinoElevatedButtonData(),
              onPressed: () {
                if (usernameEntered.isEmpty || passwordEntered.isEmpty) {
                  showAlertDialogue(unPwError);
                } else {
                  Navigator.pushReplacement(
                      context,
                      platformPageRoute(
                          context: context,
                          builder: (context) => const Homepage()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialogue(String message) {
    showPlatformDialog(
        context: context,
        builder: (_) {
          return PlatformAlertDialog(
            title: const Text(alert),
            content: Text(message),
            actions: [
              PlatformDialogAction(
                child: const Text(ok),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}
