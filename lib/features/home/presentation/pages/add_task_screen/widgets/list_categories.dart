import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasky/features/home/domain/entities/categories.dart';
import 'package:tasky/features/home/presentation/cubit/home_cubit.dart';
import 'package:tasky/features/home/presentation/pages/add_task_screen/widgets/category_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SizedBox(
        height: 60.h,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CategoryItem(title: categories[index],index: index,),
              separatorBuilder: (context, index) => SizedBox(
                width: 15.w,
              ),
              itemCount: categories.length,
            );
          },
        ),
      ),
    );
  }
}
