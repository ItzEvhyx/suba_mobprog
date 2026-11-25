import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:suba_mobprog/screens/friends_screen.dart';
import 'package:suba_mobprog/screens/home_screen.dart';
import 'package:suba_mobprog/screens/newsfeed_screen.dart';
import 'package:suba_mobprog/screens/notification_screen.dart';
import 'package:suba_mobprog/screens/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "BaddiesHub",
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
            "/friends": (context) => const FriendsScreen(),
            "/notifications": (context) => const NotificationScreen(),
            "/profile": (context) => const ProfileScreen(),
          },
        ); // MaterialApp
      },
    ); // ScreenUtilInit
  }
}
