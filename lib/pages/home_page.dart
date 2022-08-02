import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/custom_list.dart';
import 'package:future_jobs/widgets/job_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Ilham Hidayatullah',
                    style: subTextStyle,
                  ),
                  SizedBox(height: 30),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/profile_pic.png',
                width: 58,
                height: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.only(left: 24),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      text: 'Webiste Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/card_category2.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'IOS Developer',
                      imageUrl: 'assets/card_category3.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'Just Post',
                  style: GoogleFonts.poppins(
                    color: Color(0xff272C2F),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 30),
                child: CustomList(
                  imageUrl: 'assets/google-icon.png',
                  jobTitle: 'Fron-End Developer',
                  companyName: 'Google',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 30),
                child: CustomList(
                  imageUrl: 'assets/instagram-icon.png',
                  jobTitle: 'Mobile Developer',
                  companyName: 'Instagram',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 30),
                child: CustomList(
                  imageUrl: 'assets/facebook-icon.png',
                  jobTitle: 'Data Scientist',
                  companyName: 'Facebook',
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Navigation-1.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Navigation-2.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Navigation-3.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Navigation-4.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
