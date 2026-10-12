import 'package:ecommerce_app_huma_volve/core/services/home_services.dart';
import 'package:ecommerce_app_huma_volve/features/cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeServices homeServices;
  HomeCubit(this.homeServices) : super(HomeInitial());
  void loadHomeData() async {
    emit(CategoriesLoading());
    try {
      final categories = await homeServices.getCategories();
      emit(CategoriesSuccess(categories));
      final products = await homeServices.getProducts(categories[0].id!);
      emit(ProductsSuccess(products));
    } catch (e) {
      CategoriesError(e.toString());
    }
  }
}
