import 'package:get/state_manager.dart';

import '../domain/modal_class.dart';
import '../services/remote_services.dart';

class MovieController extends GetxController {
  var isLoading = true.obs;
  var movieList = <Datum>[].obs;

  @override
  void onInit() {
    fetchMovies();
    super.onInit();
  }

  void fetchMovies() async {
    try {
      isLoading(true);
      var movies = await RemoteServices.fetchMovies();
      if (movies != null) {
        movieList.value = movies;
      }
    } finally {
      isLoading(false);
    }
  }
}
