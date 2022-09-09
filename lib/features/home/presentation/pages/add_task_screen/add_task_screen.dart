import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/strings_manager.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:tasky/core/widgets/default_text_button.dart';
import 'package:tasky/features/home/presentation/pages/add_task_screen/widgets/app_bar_widget.dart';
import 'package:tasky/features/home/presentation/pages/add_task_screen/widgets/task_item_detail.dart';
import 'package:intl/intl.dart';

import 'widgets/list_categories.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);
  final TextEditingController name = TextEditingController();
  final TextEditingController date = TextEditingController();

  final TextEditingController startTime = TextEditingController();
  final TextEditingController endTime = TextEditingController();
  final TextEditingController description = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const AppBarWidget(),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.createNewTask,
                    style: headerTextStyle(),
                  ),
                  Icon(
                    Icons.add_task,
                    color: ColorManager.primarayColor,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              TaskItemDetail(title: StringsManager.taskName, controller: name),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.selectCategory,
                    style: bodyStyle(color: ColorManager.primarayColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      StringsManager.viewAll,
                      style: hintStyle(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const ListCategories(),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: TaskItemDetail(
                    title: StringsManager.date,
                    controller: date,
                    onTap: () async {
                      DateTime? value = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(const Duration(days: 7)));
                      if (value != null) {
                        date.text = DateFormat.MMMMEEEEd().format(value);
                      }
                    },
                  )),
                  SizedBox(
                    width: 50.w,
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    child: const Icon(Icons.calendar_month),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: TaskItemDetail(
                          title: StringsManager.startTime,
                          controller: startTime,
                          onTap: () async {
                            TimeOfDay? first = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            if (first != null) {
                              startTime.text = first.format(context);
                            }
                          })),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                      child: TaskItemDetail(
                          title: StringsManager.endTime,
                          controller: endTime,
                          onTap: () async {
                            TimeOfDay? first = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            if (first != null) {
                              endTime.text = first.format(context);
                            }
                          })),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              TaskItemDetail(
                title: StringsManager.description,
                controller: description,
                endField: true,
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                width: 0.7.sw,
                child: defaultTextButton(
                    textColor: Colors.white,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(context);
                      }
                    },
                    title: StringsManager.createTask),
              )
            ],
          ),
        ),
      )),
    );
  }
}
