import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/core/utills/assets_manager.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowAppbar extends StatelessWidget {
  const RowAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.notifications_none,
                color: ColorManager.primarayColor,
              ),
            ],
          ),
          CircleAvatar(
            radius: 40.r,
            backgroundImage: AssetImage(AssetManager.image3),
          )
        ],
      ),
    );
  }
}
