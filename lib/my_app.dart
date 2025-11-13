import 'package:flutter/material.dart';
import 'package:nti_islami/feauters/home/home_view.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/qran_view_details.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/quran_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),

      darkTheme:
          ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/QranViewDetails': (context) => QranViewDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
