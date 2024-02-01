import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:online_shop/model/shop_model.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  List<ShopModel> shop = [];

  ShopBloc() : super(ShopInitial()) {
    on<ShopFetchInitial>(shopFetchInitial);
    on<ShopLoadMore>(shopLoadMore);
  }

  FutureOr<void> shopFetchInitial(
    ShopFetchInitial event,
    Emitter<ShopState> emit,
  ) async {
    emit(ShopsFetchingLoadingState());
    await _requestAndAddShop();
    emit(ShopFetchingSuccessFulState()); //add model
  }

  FutureOr<void> shopLoadMore(
    ShopLoadMore event,
    Emitter<ShopState> emit,
  ) async {
    // emit(ShopsFetchingLoadingState());
    await _requestAndAddShop();
    emit(ShopFetchingSuccessFulState()); //add model
  }

  FutureOr<void> _requestAndAddShop() async {}
}
