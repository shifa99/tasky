import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/core/utills/color_manager.dart';
import 'package:tasky/core/utills/style_manager.dart';
import 'package:intl/intl.dart';

class TodayWidget extends StatelessWidget {
  const TodayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today',
          style: bodyStyle(),
        ),
        Text(
          DateFormat.MMMMEEEEd().format(DateTime.now()),

          style: hintStyle(color: ColorManager.thirdColor),
        ),
      ],
    );
  }
}
