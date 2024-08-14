import 'package:flutter/material.dart';

class WrapItemsWidget extends StatelessWidget {
  const WrapItemsWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.color});
  final String title;
  final String description;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              // fontFamily: 'Raleway',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
