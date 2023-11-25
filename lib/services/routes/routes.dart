import 'package:anas_flutter_assignment/app_module/cart/view/cart_view.dart';
import 'package:anas_flutter_assignment/app_module/dashboard/view/dashboard_view.dart';
import 'package:anas_flutter_assignment/app_module/movie_detail/view/movie_detail_view.dart';
import 'package:anas_flutter_assignment/app_module/select_seat/view/select_seat_view.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
      name: "/",
      page: () => DashboardView(),
    ),
    GetPage(
      name: "/detail",
      page: () => MovieDetatilView(),
    ),
    GetPage(
      name: "/select_seat",
      page: () => SelectSeatView(),
    ),
    GetPage(
      name: "/cart",
      page: () => CartView(),
    ),
  ];
}
