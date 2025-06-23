import 'package:belajar_getx/latihan_dynamic_url/detail_product_page.dart';
import 'package:belajar_getx/latihan_dynamic_url/dynamic_page.dart';
import 'package:belajar_getx/latihan_dynamic_url/product_page.dart';
import 'package:belajar_getx/latihan_navigation/nav2_page.dart';
import 'package:belajar_getx/latihan_navigation/nav3_page.dart';
import 'package:belajar_getx/latihan_navigation/nav4_page.dart';
import 'package:belajar_getx/latihan_navigation/navigation_page.dart';
import 'package:belajar_getx/latihan_navigation/profile_page.dart';
import 'package:belajar_getx/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    // route for latihan navigation
    GetPage(name: AppRoutes.page_1, page: () => const NavigationPage()),
    GetPage(name: AppRoutes.page_2, page: () => const NavtwoPage()),
    GetPage(name: AppRoutes.page_3, page: () => const NavthreePage()),
    GetPage(name: AppRoutes.page_4, page: () => const NavfourPage()),
    GetPage(name: '${AppRoutes.pageProfile}/:user', page: () => const ProfilePage()),

    // route for latihan dynamic url
    GetPage(name: AppRoutes.pageDynamic, page: () => const DynamicPage()),
    GetPage(name: AppRoutes.product, page: () => const ProductPage()),
    GetPage(name: '${AppRoutes.product}:id', page: () => const DetailProduct()),
  
  ];
}
