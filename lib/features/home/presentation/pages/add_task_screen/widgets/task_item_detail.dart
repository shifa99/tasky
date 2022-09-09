import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/widgets/default_text_field.dart';

class TaskItemDetail extends StatelessWidget {
  TaskItemDetail({
    Key? key,
    required this.title,
    this.endField = false,
    required this.controller,
    this.onTap,
  }) : super(key: key);
  final String title;
  bool endField = false;
  Function? onTap;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bodyStyle(
            color: ColorManager.primarayColor,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        defaultTextField(
            controller: controller,
            hint: title,
            onTap: () {
              if (onTap != null) {
                onTap!();
              }
            },
            maxLines: endField ? null : 1,
            validator: (String value) {
              if (value.isEmpty) return 'Please this field required';
            },
            action: endField ? TextInputAction.done : TextInputAction.next,
            type: TextInputType.name),
      ],
    );
  }
}
