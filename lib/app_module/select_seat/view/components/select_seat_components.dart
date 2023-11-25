import 'package:anas_flutter_assignment/app_module/watch_movies_list/controller/watch_movie_list_controller.dart';
import 'package:anas_flutter_assignment/utils/common_widgets/app_button.dart';
import 'package:anas_flutter_assignment/utils/common_widgets/app_text.dart';
import 'package:anas_flutter_assignment/utils/constants/app_images.dart';
import 'package:anas_flutter_assignment/utils/constants/const_strings.dart';
import 'package:anas_flutter_assignment/utils/fonts/app_dimensions.dart';
import 'package:anas_flutter_assignment/utils/fonts/app_fonts.dart';
import 'package:anas_flutter_assignment/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///    Top Widget Of Seat Selector

Widget topWidgetOfSeatSeletion({String? title, String? subTitle}) {
  return Container(
    height: Get.height / 7,
    width: Get.width,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: AppColors.LIGHT_GREY_COLOR,
    ))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: AppDimensions.FONT_SIZE_20,
              ),
            ),
            Column(
              children: [
                AppText(
                    text: title.toString(),
                    size: AppDimensions.FONT_SIZE_16,
                    fontFamily: FontFamily.medium),
                AppText(
                    text: subTitle.toString(),
                    size: AppDimensions.FONT_SIZE_12,
                    color: AppColors.BLUISH_COLOR,
                    fontFamily: FontFamily.medium)
              ],
            ),
            SizedBox(
              width: 20,
            )
          ],
        )
      ],
    ),
  );
}

//  Hall Selector

Widget hallSelector() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for (int i = 0; i < 3; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppText(
                      text: "12:30",
                      size: AppDimensions.FONT_SIZE_12,
                      fontFamily: FontFamily.medium),
                  AppText(
                      text: "  Cinetech + hall 1",
                      size: AppDimensions.FONT_SIZE_12,
                      color: AppColors.GREY_COLOR,
                      fontFamily: FontFamily.regular),
                ],
              ),
              InkWell(
                onTap: () {
                  watchController.updateHallIdex(i);
                },
                child: Obx(() {
                  return Container(
                    margin: EdgeInsets.only(top: 8, right: 10, bottom: 8),
                    height: 150,
                    width: 250,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: watchController.hallIndex.value == i
                                ? AppColors.BLUISH_COLOR
                                : AppColors.LIGHT_GREY_COLOR),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(AppImages.SEATS_IMAGE),
                  );
                }),
              ),
              Row(
                children: [
                  AppText(
                      text: "From ",
                      size: AppDimensions.FONT_SIZE_12,
                      color: AppColors.GREY_COLOR,
                      fontFamily: FontFamily.regular),
                  AppText(
                      text: "50\$",
                      size: AppDimensions.FONT_SIZE_12,
                      fontFamily: FontFamily.bold),
                  AppText(
                      text: " or ",
                      size: AppDimensions.FONT_SIZE_12,
                      color: AppColors.GREY_COLOR,
                      fontFamily: FontFamily.regular),
                  AppText(
                      text: "2500 bonus",
                      size: AppDimensions.FONT_SIZE_12,
                      fontFamily: FontFamily.bold),
                ],
              ),
            ],
          ),
      ],
    ),
  );
}

//  Date Selector

Widget dateSelector() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppText(
          text: AppStrings.DATE,
          size: AppDimensions.FONT_SIZE_16,
          fontFamily: FontFamily.medium),
      SizedBox(
        height: 5,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 7; i++)
              InkWell(
                onTap: () {
                  watchController.updateDateIdex(i);
                },
                child: Obx(() {
                  return Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: watchController.dateIndex.value == i
                            ? AppColors.BLUISH_COLOR
                            : AppColors.GREY_COLOR.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: AppText(
                        text: "${1 + i} Dec",
                        color: watchController.dateIndex.value == i
                            ? AppColors.WHHITE_COLOR
                            : AppColors.BLACK_COLOR,
                        size: AppDimensions.FONT_SIZE_12,
                        fontFamily: FontFamily.semiBold),
                  );
                }),
              )
          ],
        ),
      ),
    ],
  );
}

//  Button

Widget button() {
  return Container(
    color: AppColors.BACKGROUND_COLOR,
    padding: const EdgeInsets.all(16),
    child: AppButton(
        buttonName: AppStrings.SELECT_SEAT,
        buttonWidth: Get.width,
        buttonRadius: BorderRadius.circular(10),
        textSize: AppDimensions.FONT_SIZE_14,
        fontFamily: FontFamily.semiBold,
        buttonColor: AppColors.BLUISH_COLOR,
        textColor: AppColors.WHHITE_COLOR,
        onTap: () {
          Get.toNamed("/cart");
        }),
  );
}
