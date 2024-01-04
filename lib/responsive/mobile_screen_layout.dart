// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:search_engine_google_clone/colors.dart';
import 'package:search_engine_google_clone/widgets/mobile/mobile_footer.dart';
import 'package:search_engine_google_clone/widgets/search.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width*0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal :0),
              indicatorColor: blueColor,
              unselectedLabelColor: Colors.grey,
              labelColor: blueColor,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Images'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(
                        height: 20,
                      ),
                      // SearchButtons(),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // TranslationButtons(),
                    ],
                  ),
                  MobileFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
