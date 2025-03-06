import 'package:flutter/material.dart';

class HeroImg extends StatelessWidget {
  const HeroImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Image.asset(
          'assets/images/c.jpg',
          width: double.infinity, // Makes image stretch to screen width
          height: 200, // Adjust height as needed
          fit: BoxFit.cover, // Makes image responsive
        ),

        // Overlay Text (Positioned absolutely like CSS)
        Positioned(
          bottom: 60, // Moves text 20px above bottom
          left: 25, // Moves text 20px from left
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,",
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 26, // Text size
                  fontWeight: FontWeight.w800, // Bold text,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Taha",
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 26, // Text size
                  fontWeight: FontWeight.w800, // Bold text,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
