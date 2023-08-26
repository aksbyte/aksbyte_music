import 'dart:ui';

import 'package:aksbyte_music/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/chroma.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomAppBar(
          onPressed1: () {},
          onPressed2: () {},
          icon1: const Icon(Icons.menu_outlined),
          icon2: const Icon(Icons.more_horiz_rounded),
        ),
      ),*/
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            //gradient: Chroma.gradient,
            image: DecorationImage(
                image: AssetImage('assets/background/back1.jpg'),
                fit: BoxFit.fill),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              color: Chroma.whiteColor.withOpacity(0.2),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        onPressed1: () {},
                        onPressed2: () {},
                        icon1: const Icon(Icons.menu_outlined),
                        icon2: const Icon(Icons.more_horiz_rounded),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontSize: 20.sp, color: Chroma.whiteColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Chroma.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'Find the best songs to inhale your mind',
                        style: TextStyle(fontSize: 10.sp, color: Chroma.whiteColor),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5.sp),
                          labelText: 'Looking for...',
                          labelStyle: const TextStyle(color: Chroma.whiteColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.sp),
                            borderSide: const BorderSide(color: Chroma.whiteColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.sp),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Chroma.whiteColor.withOpacity(0.1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.sp),
                            borderSide: const BorderSide(
                                color: Chroma
                                    .whiteColor), // Set focused border color to white
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.search, color: Chroma.whiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Popular Playlist',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Chroma.whiteColor),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 150.h,
                        width: 150.h,
                        decoration: BoxDecoration(
                            color: Chroma.whiteColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5.sp)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
                              child: Image.asset(
                                'assets/background/aks.jpg',
                                fit: BoxFit.fill,
                                height: 100.h,
                                width: double.maxFinite,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Aks playlist',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Chroma.whiteColor),
                                      ),
                                      Text(
                                        'Kaune disha me leke chfsfkfkskkala re..',
                                        style: TextStyle(
                                            fontSize: 7.sp, color: Colors.white),
                                        overflow: TextOverflow.ellipsis,
                                        // wrap parent widget expanded
                                        maxLines: 1,
                                        softWrap: false,
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Container(
                                    decoration: BoxDecoration(
                                      color: Chroma.whiteColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(5.sp),
                                    ),

                                    child: Icon(
                                      Icons.play_arrow, color: Chroma.mainColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
