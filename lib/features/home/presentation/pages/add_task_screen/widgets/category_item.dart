import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:tasky/features/home/presentation/cubit/home_cubit.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.index})
      : super(key: key);
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    bool selected = HomeCubit.get(context).selectCategory(index);
    return InkWell(
      onTap: () {
        HomeCubit.get(context).rebuildCategory(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: selected ? ColorManager.primarayColor : Colors.white,
          border: Border.all(color: ColorManager.primarayColor),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          title,
          style: bodyStyle(
              color: selected ? Colors.white : ColorManager.primarayColor),
        ),
      ),
    );
  }
}
