import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/features/home/domain/entities/date_details.dart';
import 'package:tasky/features/home/presentation/cubit/home_cubit.dart';
import 'package:tasky/features/home/presentation/widgets/week_day_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeekDayList extends StatelessWidget {
  const WeekDayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DateDetails> dateDetails = weekDays();
    return SizedBox(
      height: 104.h,
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return WeekDayItem(dateDetails: dateDetails[index],index:index);
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 20.w,
                    ),
                itemCount: 7);
          },
        ),
      ),
    );
  }
}
