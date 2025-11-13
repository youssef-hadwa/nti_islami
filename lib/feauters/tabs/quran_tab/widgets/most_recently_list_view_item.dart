import 'package:flutter/material.dart';
import 'package:nti_islami/app_colors.dart';

class MostRecentlyListViewItem extends StatelessWidget {
  const MostRecentlyListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 283,
      height: 150,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.only(left: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Al-Anbiya",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "الأنبياء",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "112 Verses  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Image.asset(
          'assets/images/img_most_recent.png',
          width: 153,
        )
      ]),
    );
  }
}
