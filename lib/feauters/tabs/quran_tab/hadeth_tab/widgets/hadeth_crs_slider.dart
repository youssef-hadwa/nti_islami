import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/hadeth_tab/models/hadeth_model.dart';

class HadethCarouselSlider extends StatelessWidget {
  const HadethCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: HadethModel.hadethList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        width: 313,
        height: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/hadeth_card_bc.png',
              ),
              fit: BoxFit.fill,
            ),
            // color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: HadethModel.hadethList[itemIndex].content.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 42),
                    child: Text(
                      "${HadethModel.hadethList[itemIndex].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  // Expanded(
                  //   child: ListView.builder(
                  //     itemCount: HadethModel
                  //         .hadethList[itemIndex].content.length,
                  //     itemBuilder: (context, index) => Text(
                  //       HadethModel.hadethList[itemIndex].content[index],
                  //       style: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // )

                  SizedBox(height: 10),
                  Text(
                    "${HadethModel.hadethList[itemIndex].content}",
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
      ),
      options: CarouselOptions(
        height: 500,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        // enableInfiniteScroll: true,
        reverse: false,
        // autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        // autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
