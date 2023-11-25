import 'package:anas_flutter_assignment/app_module/select_seat/view/components/select_seat_components.dart';
import 'package:anas_flutter_assignment/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSeatView extends StatelessWidget {
  const SelectSeatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topWidgetOfSeatSeletion(
              title: Get.arguments[0], subTitle: Get.arguments[1]),
          Expanded(
            child: Container(
              width: Get.width,
              color: AppColors.BACKGROUND_COLOR,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    dateSelector(),
                    SizedBox(
                      height: 40,
                    ),
                    hallSelector()
                  ],
                ),
              ),
            ),
          ),
          button()
        ],
      ),
    );
  }
}
