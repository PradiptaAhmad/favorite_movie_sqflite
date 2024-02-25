import 'dart:io';

import 'package:favorite_movie_sqflite/common/models/movie_model.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteController extends GetxController {
  RxList<MovieModel> movieList = RxList<MovieModel>();
  var isLoading = false.obs;

  Future<void> fetchMovie() async {
    isLoading.value = true;
    Database? database;
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "db_movie";
    database = await openDatabase(path);

    final data = await database.query("movies");
    movieList.value = data.map((e) => MovieModel.fromJson(e)).toList();
    isLoading.value = false;
  }


  Future<void> deleteFromFavorite(int id, int index) async {
     Database? database;
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "db_movie";
    database = await openDatabase(path);

    await database.delete("movies",  where: "id = ?", whereArgs: [id]);
    movieList.removeAt(index);
  }

  @override
  void onInit() {
    fetchMovie();
    super.onInit();
  }
}
