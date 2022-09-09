import 'package:flutter/material.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/features/home/presentation/widgets/clipper.dart';
import 'package:tasky/features/home/presentation/widgets/item_task.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/home/presentation/widgets/list_of_tasks.dart';
import 'package:tasky/features/home/presentation/widgets/my_task_widget.dart';
import 'package:tasky/features/home/presentation/widgets/row_appbar.dart';
import 'package:tasky/features/home/presentation/widgets/today_widget.dart';
import 'package:tasky/features/home/presentation/widgets/week_day_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primarayColor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipPath(
                clipper: Customshape(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(70.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 165.h,
                      ),
                      const MyTaskWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      const TodayWidget(),
                      SizedBox(
                        height: 25.h,
                      ),
                      const WeekDayList(),
                    ],
                  ),
                ),
              ),
              const RowAppbar(),
            ],
          ),
          const ListOfTasks()
        ],
      ),
    );
  }
}
