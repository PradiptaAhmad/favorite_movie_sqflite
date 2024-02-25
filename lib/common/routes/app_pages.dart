import 'package:favorite_movie_sqflite/app/pages/favorite_page/favorirte_page_view.dart';
import 'package:favorite_movie_sqflite/app/pages/favorite_page/favorite_page_binding.dart';
import 'package:favorite_movie_sqflite/app/pages/home_page/home_page_bindings.dart';
import 'package:favorite_movie_sqflite/app/pages/home_page/home_page_view.dart';
import 'package:favorite_movie_sqflite/common/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.HOME_PAGE;

  static final routes = [
    GetPage(
        name: Routes.HOME_PAGE,
        page: () => HomePageView(),
        binding: HomePageBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.FAVORITE_PAGE,
        page: () => FavoritePageView(),
        binding: FavoritePageBinding(),
        transition: Transition.noTransition),
  ];
}
