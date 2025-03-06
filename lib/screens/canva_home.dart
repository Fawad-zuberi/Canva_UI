import 'package:canva/components/Search_Bar.dart';
import 'package:canva/components/create_a_desing.dart';
import 'package:canva/components/dynamic_scroll.dart';
import 'package:canva/components/hero_img.dart';
import 'package:flutter/material.dart';

class CanvaHome extends StatelessWidget {
  const CanvaHome({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> logosData = [
      {'isFree': false, 'imageLoc': 'assets/images/logo1.jpg'},
      {'isFree': true, 'imageLoc': 'assets/images/logo3.png'},
      {'isFree': false, 'imageLoc': 'assets/images/logo4.png'},
      {'isFree': true, 'imageLoc': 'assets/images/logo5.png'},
      {'isFree': false, 'imageLoc': 'assets/images/logo6.png'},
    ];

    final List<Map<String, dynamic>> instaPostsData = [
      {'isFree': true, 'imageLoc': 'assets/images/post1.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/post2.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post3.png'},
      {'isFree': false, 'imageLoc': 'assets/images/post4.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/c.jpg'},
      {'isFree': false, 'imageLoc': 'assets/images/post1.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/post3.png'},
    ];

    final List<Map<String, dynamic>> ytThumbnailsData = [
      {'isFree': true, 'imageLoc': 'assets/images/ytthumb1.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/ytthumb2.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/ytthumb3.png'},
      {'isFree': false, 'imageLoc': 'assets/images/ytthumb4.jpeg'},
    ];

    final List<Map<String, dynamic>> instaStoriesData = [
      {'isFree': true, 'imageLoc': 'assets/images/story1.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/story2.jpg'},
      {'isFree': true, 'imageLoc': 'assets/images/story3.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/story3.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/story1.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/story2.jpg'},
    ];

    final List<Map<String, dynamic>> PostersData = [
      {'isFree': true, 'imageLoc': 'assets/images/story1.jpeg'},
      {'isFree': false, 'imageLoc': 'assets/images/post4.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post1.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post2.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post3.png'},
      {'isFree': true, 'imageLoc': 'assets/images/story2.jpg'},
    ];

    final List<Map<String, dynamic>> FacebookCovers = [
      {'isFree': true, 'imageLoc': 'assets/images/ytthumb1.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post3.png'},
      {'isFree': false, 'imageLoc': 'assets/images/post2.jpeg'},
      {'isFree': true, 'imageLoc': 'assets/images/post3.png'},
      {'isFree': false, 'imageLoc': 'assets/images/ytthumb2.jpeg'}
    ];

    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          // ✅ Entire screen scrolls
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Searchbar(),
              HeroImg(),
              CreateADesign(),
              DynamicScroll(
                logosData: logosData,
                height: 60,
                Text1: "Logos",
                Text2: "See All",
                width: 70,
                top: 40,
                left: 32,
              ),
              DynamicScroll(
                logosData: instaPostsData,
                height: 60,
                Text1: "Instagram Posts",
                Text2: "See All",
                width: 70,
                top: 40,
                left: 32,
              ),
              DynamicScroll(
                logosData: ytThumbnailsData,
                height: 60,
                Text1: "Youtube Thumbnails",
                Text2: "See All",
                width: 90,
                top: 40,
                left: 48,
              ),
              DynamicScroll(
                logosData: instaStoriesData,
                height: 100,
                Text1: "Instagram Stories",
                Text2: "See All",
                width: 70,
                top: 50,
                left: 30,
              ),
              DynamicScroll(
                logosData: PostersData,
                height: 100,
                Text1: "Posters",
                Text2: "See All",
                width: 80,
                top: 60,
                left: 33,
              ),
              DynamicScroll(
                logosData: FacebookCovers,
                height: 60,
                Text1: "Facebook Covers",
                Text2: "See All",
                width: 80,
                top: 40,
                left: 40,
              ),
              DynamicScroll(
                logosData: logosData,
                height: 70,
                Text1: "Animated Logos",
                Text2: "See All",
                width: 70,
                top: 40,
                left: 32,
              ),
              const SizedBox(height: 20), //
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.deepPurpleAccent,
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          size: 25,
          color: Colors.white,
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ✅ Equal spacing
          children: [
            TextButton(
              onPressed: () {
                print("Home Clicked");
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home, size: 24), Text("Home")],
              ),
            ),
            TextButton(
              onPressed: () {
                print("Designs Clicked");
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.design_services,
                    size: 24,
                    color: Colors.grey,
                  ),
                  Text(
                    "Designs",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                print("Menu Clicked");
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.menu,
                    size: 24,
                    color: Colors.grey,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
