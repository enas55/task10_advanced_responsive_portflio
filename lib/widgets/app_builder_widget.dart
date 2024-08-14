import 'package:flutter/material.dart';

class AppBuilderWidget extends StatelessWidget {
  const AppBuilderWidget({
    super.key,
    required this.desktop,
    required this.mobile,
  });
  final Widget Function(BuildContext) desktop;
  final Widget Function(BuildContext) mobile;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 800) {
      return mobile.call(context);
    }
    return desktop.call(context);
  }
}
