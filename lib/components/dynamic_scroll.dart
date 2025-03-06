import 'package:flutter/material.dart';
import 'package:canva/components/card_prop.dart';
import 'package:canva/components/header.dart';

class DynamicScroll extends StatelessWidget {
  final List<Map<String, dynamic>> logosData;
  final double height;
  final Text1;
  final Text2;
  final double width;
  final top;
  final left;

  const DynamicScroll(
      {super.key,
      required this.logosData,
      required this.height,
      required this.Text1,
      required this.Text2,
      this.width = 60,
      required this.top,
      required this.left});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            Text1: Text1,
            Text2: Text2,
          ),
          SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: logosData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CardProp(
                      isFree: logosData[index]['isFree'],
                      ImageLoc: logosData[index]['imageLoc'],
                      width: width,
                      top: top,
                      left: left,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
