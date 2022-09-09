import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:tasky/features/home/presentation/widgets/task_time.dart';

class ItemTask extends StatelessWidget {
  const ItemTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 210.h,
            margin: EdgeInsetsDirectional.only(end: 2.w),
            padding: EdgeInsets.all(25.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  height: 100.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(
                    'assets/images/${Random.secure().nextInt(5) + 1}.png',
                    fit: BoxFit.cover,
                    height: 100.h,
                  ),
                )),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: headerTextStyle(),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Flexible(
                        child: Text(
                          'body' * 15,
                          style: bodyStyle(color: Colors.black38),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const TaskTime(),
        ],
      ),
    );
  }
}
