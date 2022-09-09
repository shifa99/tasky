import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:tasky/features/home/domain/entities/date_details.dart';
import 'package:tasky/features/home/presentation/cubit/home_cubit.dart';

class WeekDayItem extends StatelessWidget {
  const WeekDayItem({Key? key, required this.dateDetails, required this.index})
      : super(key: key);
  final DateDetails dateDetails;
  final int index;
  @override
  Widget build(BuildContext context) {
    bool isSelected = HomeCubit.get(context).selectDay(index);
    return InkWell(
      onTap: () {
        HomeCubit.get(context).rebuildDay(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.primarayColor
              : ColorManager.secondaryColor,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: ColorManager.primarayColor, width: 1),
        ),
        child: Column(
          children: [
            Text(
              dateDetails.number,
              style: headerTextStyle(
                  color: isSelected ? Colors.white : Colors.black),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              dateDetails.day,
              style: hintStyle(
                color: isSelected ? Colors.white : ColorManager.thirdColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
