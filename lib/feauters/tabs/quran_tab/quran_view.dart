import 'package:flutter/material.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/custom_text_field.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/most_recently_list_view.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/sura_list_view.dart';

class QranView extends StatelessWidget {
  const QranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Center(
            child: Image.asset(
              'assets/images/img_header.png',
            ),
          ),
          SizedBox(height: 21),
          CustomTextField(),
          SizedBox(height: 20),
          Text(
            "Most Recently",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 150,
              child: MostRecentlyListView(),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Sura List",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: SuraListView(),
          )
        ],
      ),
    );
  }
}
