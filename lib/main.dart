import 'package:aksbyte_music/screens/dashboard.dart';
import 'package:aksbyte_music/util/chroma.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,builder: (_, child) {
      return MaterialApp(
        title: 'AksByte Music',
        theme: ThemeData.light(useMaterial3: true).copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Chroma.mainColor, centerTitle: true),),
        home: const DashboardScreen(),
      );
    }
    );
  }
}