import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/models/quran_model.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/qran_view_details.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/sura_list_view_item.dart';

class SuraListView extends StatelessWidget {
  const SuraListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(top: 10.h),
        itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                QranViewDetails.routeName,
                arguments: SuraDetailsModel(
                    arabicName: SuraDetailsModel.arabicAuranSuras[index],
                    englishName: SuraDetailsModel.englishQuranSurahs[index],
                    verses: index),
              ),
              child: Row(children: [
                SuraListViewItem(index: index),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${SuraDetailsModel.englishQuranSurahs[index]}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "${SuraDetailsModel.AyaNumber[index]} verses",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "${SuraDetailsModel.arabicAuranSuras[index]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                )
              ]),
            ),
        separatorBuilder: (context, index) => Divider(
              indent: 64.w,
              endIndent: 64.w,
              thickness: 1,
            ),
        itemCount: SuraDetailsModel.englishQuranSurahs.length);
  }
}
