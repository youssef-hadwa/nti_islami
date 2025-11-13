import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/widgets/sura_list_view.dart';

class QranViewDetails extends StatefulWidget {
  static const String routeName = '/QranViewDetails';

  QranViewDetails({super.key});

  @override
  State<QranViewDetails> createState() => _QranViewDetailsState();
}

class _QranViewDetailsState extends State<QranViewDetails> {
  List<String> sura = [];
  @override
  // void initState() {
  //   getSura('assets/files/Suras/${index}.txt');
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    SuraDetailsModel model =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    getSura('assets/files/Suras/${model.index + 1}.txt');
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        backgroundColor: AppColors.secondaryColor,
        title: const Text(
          'Alf',
          style: TextStyle(color: AppColors.primaryColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/qran_details_bc.png'),
        )),
        child: Column(children: [
          SizedBox(
            height: 8,
          ),
          const Text(
            "Alfa",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Text(
                "[${index + 1}] ${sura[index]}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 24,
                ),
              ),
              itemCount: sura.length,
            ),
          )
        ]),
      ),
    );
  }

  getSuraVersNum() {
    for (int i = 0; i < sura.length; i++) {
      if (sura[i].contains('\n')) {
        return i;
      }
    }
  }

  getSura(String path) async {
    String content = await rootBundle.loadString(path);
    List<String> lines = content.split("\n");
    sura = lines;
    setState(() {});
  }
}
