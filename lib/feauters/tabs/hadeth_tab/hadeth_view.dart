import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/hadeth_tab/models/hadeth_model.dart';
import 'package:nti_islami/feauters/tabs/hadeth_tab/widgets/hadeth_crs_slider.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/custom_text_field.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  void initState() {
    loadHadeth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background_hadeth.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/img_header.png'),
          SizedBox(height: 55),
          HadethCarouselSlider(),
        ],
      ),
    );
  }

  loadHadeth() async {
    for (int i = 1; i <= 50; i++) {
      String content =
          await rootBundle.loadString('assets/files/Hadeeth/h$i.txt');
      List<String> lines = content.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      HadethModel.hadethList.add(HadethModel(content: lines, title: title));
    }

    setState(() {});
  }
}
