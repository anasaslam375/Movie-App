import 'package:anas_flutter_assignment/utils/common_widgets/app_button.dart';
import 'package:anas_flutter_assignment/utils/common_widgets/app_text.dart';
import 'package:anas_flutter_assignment/utils/constants/app_images.dart';
import 'package:anas_flutter_assignment/utils/constants/const_strings.dart';
import 'package:anas_flutter_assignment/utils/fonts/app_dimensions.dart';
import 'package:anas_flutter_assignment/utils/fonts/app_fonts.dart';
import 'package:anas_flutter_assignment/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///    Top Widget Of Cart

Widget topWidgetOfCart({String? title, String? subTitle}) {
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

//  Seat Icon With Text

Widget seatIcon({String? text, Color? color}) {
  return SizedBox(
    width: Get.width / 2.3,
    child: Row(
      children: [
        Image.asset(
          AppImages.SEAT_ICON,
          height: 17,
          width: 17,
          color: color ?? null,
        ),
        SizedBox(
          width: 10,
        ),
        AppText(
            text: text ?? AppStrings.SELECTED,
            size: AppDimensions.FONT_SIZE_12,
            color: AppColors.GREY_COLOR,
            fontFamily: FontFamily.medium)
      ],
    ),
  );
}

//   Cart Detail

Widget cartDetail() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Row(
          children: [
            seatIcon(),
            seatIcon(
                color: AppColors.GREY_COLOR, text: AppStrings.NOT_AVAILABLE)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            seatIcon(color: AppColors.LIGHT_PUPLE_COLOR, text: AppStrings.VIP),
            seatIcon(color: AppColors.BLUISH_COLOR, text: AppStrings.REGULAR)
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.LIGHT_GREY_COLOR.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                AppText(text: "4 /", size: AppDimensions.FONT_SIZE_14),
                AppText(text: "3 row", size: AppDimensions.FONT_SIZE_10),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.close, size: AppDimensions.FONT_SIZE_16),
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: AppColors.LIGHT_GREY_COLOR.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppText(
                    text: AppStrings.TOTAL,
                    size: AppDimensions.FONT_SIZE_10,
                  ),
                  AppText(
                      text: "\$ 50",
                      size: AppDimensions.FONT_SIZE_16,
                      fontFamily: FontFamily.semiBold)
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: AppButton(
                  buttonHeight: 50,
                  buttonRadius: BorderRadius.circular(10),
                  buttonName: "Proceed to pay",
                  buttonColor: AppColors.BLUISH_COLOR,
                  textSize: AppDimensions.FONT_SIZE_14,
                  fontFamily: FontFamily.semiBold,
                  textColor: AppColors.WHHITE_COLOR,
                  onTap: () {
                    Get.offAllNamed("/");
                  }),
            )
          ],
        )
      ],
    ),
  );
}
