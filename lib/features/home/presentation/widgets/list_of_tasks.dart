import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'item_task.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfTasks extends StatelessWidget {
  const ListOfTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Scrollbar(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: ListView.separated(
                itemBuilder: (context, indext) => const ItemTask(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                itemCount: 10),
          ),
        ),
      ),
    );
  }
}
