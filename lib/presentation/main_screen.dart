import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/application/movie_controller.dart';
import 'package:get/get.dart';
import 'package:task5/domain/modal_class.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'movie_tile.dart';

class MainScreen extends StatelessWidget {
  final MovieController movieController = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (movieController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else {
                return ListView.builder(
                  itemCount: movieController.movieList.length,
                  itemBuilder: (context, index) {
                    return MovieTile(movieController.movieList[index]);
                  },
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
