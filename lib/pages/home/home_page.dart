import 'package:flutter/material.dart';
import 'package:task10_advanced_responsive_portflio/widgets/app_builder_widget.dart';
import 'package:task10_advanced_responsive_portflio/pages/home/widgets/desktop_widget.dart';
import 'package:task10_advanced_responsive_portflio/pages/home/widgets/mobile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBuilderWidget(
        desktop: (ctx) => const DesktopWidget(),
        mobile: (ctx) => const MobileWidget(),
      ),
    );
  }
}
