import 'package:favorite_movie_sqflite/app/pages/home_page/home_page_controller.dart';
import 'package:favorite_movie_sqflite/common/helper/themes.dart';
import 'package:favorite_movie_sqflite/common/models/movie_model.dart';
import 'package:favorite_movie_sqflite/common/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Home Page',
            style: tsBodyLargeSemiboldBlack,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.FAVORITE_PAGE)?.then((value) {
                    controller.checkFavorite();
                  });
                },
                icon: Icon(
                  Icons.favorite_outline,
                  color: warningColor,
                ))
          ]),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() {
                if (controller.isLoading.value) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      itemCount: controller.movies.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        MovieModel movie = controller.movies[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Card(
                            elevation: 2.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                  title: Text('${movie.title}'),
                                  subtitle: Text('${movie.releaseDate}'),
                                  leading: Image.network(
                                      "https://image.tmdb.org/t/p/w500${movie.posterPath}"),
                                  trailing: Obx(() {
                                    bool isFavorite =
                                        controller.isFavorite[index].value;
                                    return IconButton(
                                        onPressed: () {
                                          if (controller.isFavorite[index] ==
                                              false) {
                                            controller.addToFavorite(
                                              MovieModel(
                                                  id: movie.id,
                                                  backdropPath:
                                                      movie.backdropPath,
                                                  originalLanguage:
                                                      movie.originalLanguage,
                                                  originalTitle:
                                                      movie.originalTitle,
                                                  overview: movie.overview,
                                                  popularity: movie.popularity,
                                                  posterPath: movie.posterPath,
                                                  releaseDate:
                                                      movie.releaseDate,
                                                  title: movie.title,
                                                  voteAverage:
                                                      movie.voteAverage,
                                                  voteCount: movie.voteCount),
                                            );
                                          } else {
                                            controller
                                                .deleteFromFavorite(movie.id!);
                                          }   
                                          controller.isFavorite[index].toggle();
                                        },
                                        icon: isFavorite == false
                                            ? Icon(Icons.favorite_outline)
                                            : Icon(
                                                Icons.favorite,
                                                fill: 1,
                                                color: Colors.red,
                                              ));
                                  })),
                            ),
                          ),
                        );
                      });
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
