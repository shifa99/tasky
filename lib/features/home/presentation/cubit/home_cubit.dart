import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int selectedDay = 0;
  int selectedCategory = 0;
  void rebuildDay(int index) {
    selectedDay = index;
    emit(HomeReload());
  }

  bool selectDay(int index) => index == selectedDay;

  void rebuildCategory(int index) {
    selectedCategory = index;
    emit(HomeReload());
  }

  bool selectCategory(int index) => index == selectedCategory;
}
