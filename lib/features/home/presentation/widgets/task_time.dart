import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/utills/style_manager.dart';

class TaskTime extends StatelessWidget {
  const TaskTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: Container(
        padding: EdgeInsets.all(13.r),
        child: Text(
          '11:00 AM',
          style: bodyStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20.r),
            bottomEnd: Radius.circular(20.r),
          ),
        ),
      ),
    );
  }
}
