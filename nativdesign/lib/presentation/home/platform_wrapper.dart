import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlatWrapper extends StatelessWidget {
  final Widget cupertino;
  final Widget material;
  const PlatWrapper(
      {super.key, required this.cupertino, required this.material});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? cupertino : material;
  }
}
