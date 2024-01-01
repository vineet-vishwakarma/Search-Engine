import 'package:flutter/material.dart';
import 'package:search_engine_google_clone/colors.dart';
import 'package:search_engine_google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'India',
                        style: TextStyle(
                          color: Color.fromARGB(255, 186, 186, 186),
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterText(title: 'About'),
                    SizedBox(width: 10),
                    FooterText(title: 'Advertising'),
                    SizedBox(width: 10),
                    FooterText(title: 'Business'),
                    SizedBox(width: 10),
                    FooterText(title: 'How Search Works'),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterText(title: 'Privacy'),
                    SizedBox(width: 10),
                    FooterText(title: 'Terms'),
                    SizedBox(width: 10),
                    FooterText(title: 'Settings'),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
