import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/navigation.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/home/presentation/pages/add_task_screen/add_task_screen.dart';

class MyTaskWidget extends StatelessWidget {
  const MyTaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Task',
          style: headerTextStyle(),
        ),
        InkWell(
          onTap: () 
          {
            navigateTo(context: context, screen: AddTaskScreen());
          },
          child: Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
                color: ColorManager.primarayColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30.sp,
            ),
          ),
        )
      ],
    );
  }
}
