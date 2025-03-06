import 'package:flutter/material.dart';

class CardProp extends StatelessWidget {
  final bool isFree;
  final String ImageLoc;
  final double width;
  final top;
  final left;

  const CardProp(
      {super.key,
      required this.isFree,
      required this.ImageLoc,
      this.width = 60,
      required this.top,
      required this.left});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Image inside a bordered container
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(4.0), // Rounded corners
          ),
          child: Image.asset(
            ImageLoc,
            width: width,
            fit: BoxFit.fill,
          ),
        ),

        if (isFree)
          Positioned(
            top: top,
            left: left,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                "FREE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1),
              ),
            ),
          ),
      ],
    );
  }
}
