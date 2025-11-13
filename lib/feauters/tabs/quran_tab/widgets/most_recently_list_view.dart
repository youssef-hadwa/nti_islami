import 'package:flutter/material.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/most_recently_list_view_item.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MostRecentlyListViewItem();
        },
        itemCount: 10);
  }
}
