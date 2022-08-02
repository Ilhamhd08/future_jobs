import 'package:flutter/material.dart';
import 'package:future_jobs/pages/detail_page.dart';
import 'package:future_jobs/theme.dart';

class CustomList extends StatelessWidget {
  final String? jobTitle;
  final String? imageUrl;
  final String? companyName;

  CustomList({this.jobTitle, this.companyName, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl!,
            width: 45,
            height: 45,
          ),
          SizedBox(width: 27),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle!,
                  style: jobTextStyle,
                ),
                Text(
                  companyName!,
                  style: companyTextStyle,
                ),
                SizedBox(height: 18),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
