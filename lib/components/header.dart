import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Text1;
  final Text2;
  const Header({super.key, required this.Text1, required this.Text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Text1,
            style: TextStyle(
              color: Colors.black, // Text color
              fontSize: 20, // Text size
              fontWeight: FontWeight.w800, // Bold text,
            ),
          ),
          Text(
            Text2,
            style: TextStyle(
              color: Colors.grey, // Text color
              fontSize: 16, // Text size
              fontWeight: FontWeight.w200, // Bold text,
            ),
          )
        ],
      ),
    );
  }
}
