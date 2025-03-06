import 'package:flutter/material.dart';

class CreateCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double width;
  final double height;

  const CreateCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.width = 60, // Default width
    this.height = 100, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              width: width * 0.6, // Adjusted image size relative to container
              height: height * 0.6,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
