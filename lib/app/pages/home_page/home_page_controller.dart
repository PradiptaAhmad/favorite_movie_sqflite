import 'dart:convert';
import 'dart:io';

import 'package:favorite_movie_sqflite/common/models/movie_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class HomePageController extends GetxController {
  RxList<MovieModel> movies = RxList<MovieModel>();
  RxList<RxBool> isFavorite = RxList<RxBool>();
  var isLoading = false.obs;

  Future<void> fetchMovie() async {
    isLoading.value = true;
    var headers = {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxMzE2OTFlMDE4ZjQwNWJjYzljNGY4MDU0MDI3MTFkNSIsInN1YiI6IjY1YzEwZjg2OTAyMDEyMDE3Y2NmNWM4MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.b2tPsGa3tk8hltpFpBGGG6SNYFA4lUq78Rq5FErb_2s",
      "Accept": "application/json"
    };

    var response = await http.get(
        Uri.parse(
            "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1"),
        headers: headers);
    List<dynamic> jsonData = json.decode(response.body)["results"];
    movies.value = jsonData.map((e) => MovieModel.fromJson(e)).toList();
    checkFavorite();
    isLoading.value = false;
  }

  Future<void> initDatabase() async {
    Database? database;
    String db_name = "db_movie";
    int db_version = 1;

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + db_name;

    database = await openDatabase(path, version: db_version,
        onCreate: (Database db, int version) async {
      await db.execute('''
      CREATE TABLE IF NOT EXISTS movies (
        id INTEGER PRIMARY KEY,
        backdrop_path TEXT,

        original_language TEXT,
        original_title TEXT,
        overview TEXT,
        popularity DOUBLE,
        poster_path TEXT,
        release_date TEXT,
        title TEXT,
        vote_average DOUBLE,
        vote_count INTEGER
      )
    ''');
    });
  }

  Future<void> addToFavorite(MovieModel? movieModel) async {
    Database? database;
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "db_movie";
    database = await openDatabase(path);

    await database.insert("movies", movieModel!.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> checkFavorite() async {
    Database? database;
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "db_movie";
    database = await openDatabase(path);

    isFavorite.value = List.generate(movies.length, (index) => false.obs);

    for (int i = 0; i < movies.length; i++) {
      List<Map<String, dynamic>> result = await database.query(
        "movies",
        where: 'id = ?',
        whereArgs: [movies[i].id],
      );
      bool favorite = result.isNotEmpty;
      print(favorite);
      isFavorite[i] = favorite.obs;
    }
  }

  Future<void> deleteFromFavorite(int id) async {
    Database? database;
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "db_movie";
    database = await openDatabase(path);

    await database.delete("movies", where: "id = ?", whereArgs: [id]);
  }

  @override
  void onInit() {
    initDatabase();
    print("sukses membuat database dan tabel");
    fetchMovie();
    super.onInit();
  }
}
