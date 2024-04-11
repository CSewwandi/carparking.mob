import 'package:get/get.dart';
import 'package:smart_car_parking/pages/MapPage.dart';
import 'package:smart_car_parking/pages/about_us/about_us.dart';
import 'package:smart_car_parking/pages/booking_page/booking_page.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';

var pages = [
  GetPage(
    name: '/homepage',
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/about-us',
    page: () => AboutUs(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/map-page',
    page: () => MapPage(),
    transition: Transition.fade,
  ),
];
