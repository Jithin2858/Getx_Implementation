
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task5/presentation/main_screen.dart';

import 'application/movie_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MovieController movieController = Get.put(MovieController());


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScreen()
    );
  }
}

