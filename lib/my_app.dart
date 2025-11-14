import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti_islami/feauters/home/home_view.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/qran_view_details.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/quran_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: MaterialApp(
        // theme: ThemeData.dark(),

        darkTheme:
            ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeView(),
          '/QranViewDetails': (context) => QranViewDetails(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
