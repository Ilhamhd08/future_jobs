import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/custom_list.dart';

class SecondHomaPage extends StatelessWidget {
  final String? jobTitleHome;
  final String? imageUrl;

  SecondHomaPage({this.imageUrl, this.jobTitleHome});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190, left: 24),
                      child: Text(
                        jobTitleHome!,
                        style: jobTitleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 230, left: 24),
                      child: Text(
                        '12,309 available',
                        style: availableJobTextStyle,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: titleList,
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Fron-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'Mobile Developer',
                            imageUrl: 'assets/instagram-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Scientist',
                            imageUrl: 'assets/facebook-icon.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30.5,
                    left: 32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Startups',
                        style: titleList,
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Fron-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'UI Designer',
                            imageUrl: 'assets/instagram-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Analyst',
                            imageUrl: 'assets/facebook-icon.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
