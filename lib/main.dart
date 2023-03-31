import 'package:flutter/material.dart';
import 'package:vr_player/pages/add_video.dart';
import 'package:vr_player/pages/test_page.dart';
import 'package:vr_player/pages/vr_player_page.dart';
import 'package:video_360/video_360.dart';
import 'package:vr_player/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'VR player',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: '/',
      routes: {
        MainRoute.addVideo: (contex) => const AddVideo(),
        // MainRoute.vrPlayer: (contex) => const VrPlayer(),
        MainRoute.test: (contex) => const TestPage(),
      },
    );
  }
}
