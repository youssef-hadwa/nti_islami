import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/custom_text_field.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/most_recently_list_view.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/sura_list_view.dart';

class QranView extends StatelessWidget {
  const QranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Center(
            child: Image.asset(
              'assets/images/img_header.png',
            ),
          ),
          SizedBox(height: 21.h),
          CustomTextField(),
          SizedBox(height: 20.h),
          Text(
            "Most Recently",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: SizedBox(
              height: 150.h,
              child: MostRecentlyListView(),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Sura List",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: SuraListView(),
          )
        ],
      ),
    );
  }
}
