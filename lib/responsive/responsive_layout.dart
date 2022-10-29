import 'package:flutter/material.dart';

class ResponsivaLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsivaLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        //WEB SCREEN
        return webScreenLayout;
      }
      return mobileScreenLayout;
      //Mobile Screen
    });
  }
}
