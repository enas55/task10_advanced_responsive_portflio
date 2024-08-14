import 'package:flutter/material.dart';
import 'package:task10_advanced_responsive_portflio/utilities/color_utility.dart';

class NavbarItemWidget extends StatelessWidget {
  const NavbarItemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.color,
  });

  final String title;
  final IconData icon;
  final void Function() onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: ColorsUtility.semiLightGrey,
            border: Border.all(
              color: ColorsUtility.semiLightGrey,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
