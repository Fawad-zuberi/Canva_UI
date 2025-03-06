import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Fixed padding
      child: TextField(
        decoration: InputDecoration(
          hintText: "Try 'Instagram' Story ", // Placeholder text
          hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5), // Rounded corners
            borderSide:
                BorderSide(color: Colors.grey, width: 1), // Border color
          ),
          prefixIcon: Padding(
            padding:
                EdgeInsets.only(left: 15, right: 5), // Padding inside the icon
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
// Icon on the left side
          filled: true, // Enables background fill
          fillColor: Colors.white, // Light background color
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5), // Rounded corners
            borderSide:
                BorderSide(color: Colors.black, width: 1), // Border color
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
        ),
      ),
    );
  }
}
