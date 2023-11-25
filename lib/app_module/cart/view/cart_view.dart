import 'package:anas_flutter_assignment/app_module/cart/view/components/cart_components.dart';
import 'package:anas_flutter_assignment/utils/constants/app_images.dart';
import 'package:anas_flutter_assignment/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topWidgetOfCart(
              title: "The King’s Man",
              subTitle: "March 5, 2021  I  12:30 hall 1"),
          Expanded(
            child: Container(
              width: Get.width,
              color: AppColors.BACKGROUND_COLOR,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Center(child: Image.asset(AppImages.CART_IMAGE))],
                ),
              ),
            ),
          ),
          cartDetail()
        ],
      ),
    );
  }
}
