import 'package:favorite_movie_sqflite/app/pages/favorite_page/favorite_page_controller.dart';
import 'package:favorite_movie_sqflite/common/helper/themes.dart';
import 'package:favorite_movie_sqflite/common/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FavoritePageView extends GetView<FavoriteController> {
  const FavoritePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Movie"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                if (controller.isLoading.value) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    itemCount: controller.movieList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      MovieModel movie = controller.movieList[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Card(
                          elevation: 2.0,
                          child: ListTile(
                              title: Text('${movie.title}'),
                              subtitle: Text('${movie.releaseDate}'),
                              leading: Image.network(
                                  "https://image.tmdb.org/t/p/w500${movie.posterPath}"),
                              trailing: IconButton(
                                  onPressed: () {
                                    controller.deleteFromFavorite(
                                        movie.id!, index);
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: warningColor,
                                  ))),
                        ),
                      );
                    },
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
