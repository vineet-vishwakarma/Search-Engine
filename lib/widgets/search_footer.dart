import 'package:flutter/material.dart';
import 'package:search_engine_google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: size.width > 768 ? 150.0 : 10, vertical: 15),
          child: Row(
            children: [
              Text(
                'India',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                color: Color(0xff70757A),
                size: 12,
              ),
              const SizedBox(width: 10),
              const Text(
                'Bhopal, Madhya Pradesh',
                style: TextStyle(fontSize: 14, color: primaryColor),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0.3,
          height: 5,
          color: Colors.black26,
        ),
        Container(
          color: footerColor,
          padding:
              EdgeInsets.symmetric(horizontal: size.width > 768 ? 150 : 10),
          child: Row(
            children: [
              Text(
                'More options in',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Quick settings',
                  style: TextStyle(
                    color: blueColor,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
