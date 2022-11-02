import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.26,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            fillColor: searchBarColor,
            filled: true,
            hintStyle: const TextStyle(fontSize: 13),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 0, style: BorderStyle.none),
            ),
            hintText: "Search or Start new Chart",
            prefixIcon: Padding(
              child: Icon(
                Icons.search,
                size: 20,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
