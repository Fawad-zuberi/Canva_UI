import 'package:canva/components/create_card.dart';
import 'package:flutter/material.dart';
import 'package:canva/components/card_prop.dart';
import 'package:canva/components/header.dart';

class CreateADesign extends StatelessWidget {
  const CreateADesign({super.key});

  // Dummy data list
  final List<Map<String, dynamic>> designOptions = const [
    {
      'title': 'Instagram Story',
      'imagePath': 'assets/images/insta.png',
      'width': 60,
      'height': 100,
    },
    {
      'title': 'Instagram Post',
      'imagePath': 'assets/images/insta.png',
      'width': 60,
      'height': 60,
    },
    {
      'title': 'Youtube Thumbnail',
      'imagePath': 'assets/images/yt.png',
      'width': 80,
      'height': 60,
    },
    {
      'title': 'Facebook Cover',
      'imagePath': 'assets/images/fb.png',
      'width': 80,
      'height': 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(
          Text1: "Create a Design",
          Text2: "",
        ),
        SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: designOptions.length,
              itemBuilder: (context, index) {
                final option = designOptions[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CreateCard(
                    title: option['title'],
                    imagePath: option['imagePath'],
                    width: option['width'],
                    height: option['height'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
